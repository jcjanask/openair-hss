#include <aws/core/Aws.h>
#include <aws/core/utils/Outcome.h>
#include <aws/dynamodb/DynamoDBClient.h>
#include <aws/dynamodb/model/UpdateItemRequest.h>
#include <aws/dynamodb/model/QueryRequest.h>
#include <aws/dynamodb/model/GetItemRequest.h>
#include <aws/dynamodb/model/ScanRequest.h>
#include <dataaccess.h>
#include <common_def.h>
#include <iostream>
#include <dynamodb.h>
#include <string>
#include <util.h>

extern "C" {
#include "auc.h"
}

DynamoDb::DynamoDb() {}

DynamoDb::~DynamoDb() {}

void DynamoDb::connect() {
  Aws::InitAPI(options);
  {}
}

void DynamoDb::disconnect() {
  std::cout << "Shutting Down DynamoDB API gate" << std::endl;
  Aws::ShutdownAPI(options);
}



#define KEY_LENGTH (16)
#define RAND_LENGTH (16)

#define ASCII_TO_BINARY(c)                                                     \
  (c >= '0' && c <= '9' ? c - '0' :                                            \
   c >= 'a' && c <= 'f' ? c - 'a' + 10 :                                       \
   c >= 'A' && c <= 'F' ? c - 'A' + 10 :                                       \
                          0)

void DynamoDb::convert_ascii_to_binary(
    unsigned char* dest, unsigned char* src, int length) {
  int i;
  for (i = 0; i < length; i++)
    dest[i] = (ASCII_TO_BINARY(src[i << 1]) << 4) |
              ASCII_TO_BINARY(src[(i << 1) + 1]);
}

DDBEventIdList::DDBEventIdList() {}

DDBEventIdList::~DDBEventIdList() {
  DDBEventIdList::iterator it;

  while ((it = begin()) != end()) {
    delete *it;
    pop_front();
  }
}

bool DynamoDb::purgeUe(std::string imsi) {
  const Aws::String tableName = "subscribers";
  const Aws::String keyValue(imsi);

  // Client configs
  Aws::Client::ClientConfiguration clientConfig;
  clientConfig.region = "us-west-2";
  Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);

  // *** Define UpdateItem request arguments
  Aws::DynamoDB::Model::UpdateItemRequest request;
  // Define TableName argument.
  request.SetTableName("subscribers");

  // Define KeyName argument.
  Aws::DynamoDB::Model::AttributeValue attribValue;
  attribValue.SetS(keyValue);
  request.AddKey("imsi", attribValue);

  // Construct the SET update expression argument.
  Aws::String update_expression("SET #a = :valueA");
  request.SetUpdateExpression(update_expression);

  request.AddExpressionAttributeNames("#a", "ms_ps_status");

  // Construct attribute value argument.
  Aws::DynamoDB::Model::AttributeValue attributeUpdatedValue;
  attributeUpdatedValue.SetS("PURGED");
  request.AddExpressionAttributeValues(":valueA", attributeUpdatedValue);

  // Update the item.
  const Aws::DynamoDB::Model::UpdateItemOutcome& result =
      dynamoClient.UpdateItem(request);
  if (!result.IsSuccess()) {
    std::cout << result.GetError().GetMessage() << std::endl;
    return 0;
  } else {
    std::cout << "Item was updated." << std::endl;
    return 1;
  }
  return 0;
}

bool DynamoDb::getMmeIdentityFromImsi(std::string imsi) {
  Aws::Vector<Aws::String> attributesToGet;
  attributesToGet.push_back(Aws::String("idmmeidentity"));
  attributesToGet.push_back(Aws::String("mmehost"));
  // Add other attributes to get mmerealm, mmeisdn

  Aws::DynamoDB::Model::GetItemOutcome res = getFromImsi(imsi, attributesToGet);
  if (res.GetResult().GetItem().size() == 2) return true;

  return false;
}

bool DynamoDb::checkOpcKeys(const uint8_t opP[16]) {
  Aws::Client::ClientConfiguration clientConfig;
  Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);
  Aws::DynamoDB::Model::ScanRequest req;
  req.AddExpressionAttributeNames("#k", "key");
  Aws::String projection("imsi, #k, opc");
  // Set up the request.
  req.SetTableName("subscribers");
  req.SetProjectionExpression(projection);
  // Retrieve the item's fields and values
  const Aws::DynamoDB::Model::ScanOutcome& res = dynamoClient.Scan(req);

  std::string imsi;
  std::string key;
  std::string opc;
  const Aws::Vector<
      Aws::Map<Aws::String, Aws::DynamoDB::Model::AttributeValue>>& items =
      res.GetResult().GetItems();
  for (auto& item : items) {
    for (const auto& i : item) {
      if (i.first == "key") {
        key = i.second.GetS();
        continue;
      }
      if (i.first == "imsi") {
        imsi = i.second.GetS();
        continue;
      }
      if (i.first == "opc") {
        opc = i.second.GetS();
        continue;
      }
    }
  }

  uint8_t opccalc[16];
  uint8_t key_bin[16];
  convert_ascii_to_binary(key_bin, (uint8_t*) key.c_str(), KEY_LENGTH);
  ComputeOPc(key_bin, opP, opccalc);

  std::string newopc = Utility::bytes2hex(opccalc, OPC_LENGTH);

  if (!updateOpc(imsi, newopc)) {
    return false;
  }
}

bool DynamoDb::updateOpc(std::string& imsi, std::string& opc) {
  std::stringstream ss;
  const Aws::String tableName = "subscribers";
  const Aws::String keyValue(imsi);

  // Client configs
  Aws::Client::ClientConfiguration clientConfig;
  clientConfig.region = "us-west-2";
  Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);

  // *** Define UpdateItem request arguments
  Aws::DynamoDB::Model::UpdateItemRequest request;
  // Define TableName argument.
  request.SetTableName("subscribers");

  // Define KeyName argument.
  Aws::DynamoDB::Model::AttributeValue attribValue;
  attribValue.SetS(keyValue);
  request.AddKey("imsi", attribValue);

  // Construct the SET update expression argument.
  Aws::String update_expression("SET #a = :valueA");
  request.SetUpdateExpression(update_expression);

  request.AddExpressionAttributeNames("#a", "opc");

  // Construct attribute value argument.
  Aws::DynamoDB::Model::AttributeValue attributeUpdatedValue;
  attributeUpdatedValue.SetS(opc);
  request.AddExpressionAttributeValues(":valueA", attributeUpdatedValue);

  // Update the item.
  const Aws::DynamoDB::Model::UpdateItemOutcome& result =
      dynamoClient.UpdateItem(request);
  if (!result.IsSuccess()) {
    std::cout << result.GetError().GetMessage() << std::endl;
    return 0;
  }

  return 1;
}

bool DynamoDb::getImsiInfoData(
    const Aws::Map<Aws::String, Aws::DynamoDB::Model::AttributeValue>& result,
    DDBImsiInfo& ddbimsi) {
  for (const auto& i : result) {
    if (i.first == "imsi") {
      ddbimsi.imsi = i.second.GetS();
    }
    if (i.first == "mmehost") {
      ddbimsi.mmehost = i.second.GetS();
    }
    if (i.first == "mmerealm") {
      ddbimsi.mmerealm = i.second.GetS();
    }
    if (i.first == "ms_ps_status") {
      ddbimsi.ms_ps_status = i.second.GetS();
    }
    if (i.first == "subscription_data") {
      ddbimsi.subscription_data = i.second.GetS();
    }
    if (i.first == "msisdn") {
      ddbimsi.msisdn = stol(i.second.GetN());
    }
    if (i.first == "visited_plmnid") {
      ddbimsi.visited_plmnid = i.second.GetS();
    }
    if (i.first == "access_restriction") {
      ddbimsi.access_restriction = stoi(i.second.GetN());
    }
    if (i.first == "mmeid") {
      ddbimsi.mmeid = stoi(i.second.GetN());
    }
  }
  return true;
}

bool DynamoDb::getImsiInfo(std::string imsi, DDBImsiInfo& ddbimsi, void* data) {
  Aws::Vector<Aws::String> attributesToGet;
  attributesToGet.push_back(Aws::String("imsi"));
  attributesToGet.push_back(Aws::String("mmehost"));
  attributesToGet.push_back(Aws::String("mmerealm"));
  attributesToGet.push_back(Aws::String("ms_ps_status"));
  attributesToGet.push_back(Aws::String("subscription_data"));
  attributesToGet.push_back(Aws::String("msisdn"));
  attributesToGet.push_back(Aws::String("visited_plmnid"));
  attributesToGet.push_back(Aws::String("access_restriction"));
  attributesToGet.push_back(Aws::String("mmeid"));
  Aws::DynamoDB::Model::GetItemOutcome res = getFromImsi(imsi, attributesToGet);
  if (res.IsSuccess()) {
    const Aws::Map<Aws::String, Aws::DynamoDB::Model::AttributeValue>& item =
        res.GetResult().GetItem();
    return getImsiInfoData(item, ddbimsi);
  }
  return false;
}

bool DynamoDb::updateLocation(
    DDBImsiInfo& location, uint32_t present_flags, int32_t idmmeidentity, void* data) {

  // Client configs
  Aws::Client::ClientConfiguration clientConfig;
  clientConfig.region = "us-west-2";
  Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);

  // *** Define UpdateItem request arguments
  Aws::DynamoDB::Model::UpdateItemRequest request;
  // Define TableName argument.
  request.SetTableName("subscribers");

  // Define KeyName argument.
  Aws::DynamoDB::Model::AttributeValue attribValue;
  attribValue.SetS(location.imsi);
  request.AddKey("imsi", attribValue);

  // Construct the SET update expression argument.
  Aws::String update_expression("SET");

  if (FLAG_IS_SET(present_flags, IMEI_PRESENT)) {
    update_expression += " imei= :a,";
    Aws::DynamoDB::Model::AttributeValue imei;
    imei.SetS(location.imei);
    request.AddExpressionAttributeValues(":a", imei);
  }

  if (FLAG_IS_SET(present_flags, SV_PRESENT)) {
    update_expression += " imei_sv= :b,";
    Aws::DynamoDB::Model::AttributeValue imei_sv;
    imei_sv.SetS(location.imei_sv);
    request.AddExpressionAttributeValues(":b", imei_sv);
  }

  if (FLAG_IS_SET(present_flags, MME_IDENTITY_PRESENT)) {
    update_expression += " mmeid= :c, mmehost= :d, mmerealm= :e,";
    Aws::DynamoDB::Model::AttributeValue mmeid;
    mmeid.SetN(std::to_string(location.mmeid));
    Aws::DynamoDB::Model::AttributeValue mmehost;
    mmehost.SetS(location.mmehost);
    Aws::DynamoDB::Model::AttributeValue mmerealm;
    mmerealm.SetS(location.mmerealm);
    request.AddExpressionAttributeValues(":c", mmeid);
    request.AddExpressionAttributeValues(":d", mmehost);
    request.AddExpressionAttributeValues(":e", mmerealm);
  }

  update_expression += " ms_ps_status=:f, visited_plmnid= :g";
  Aws::DynamoDB::Model::AttributeValue ms_ps_status;
  ms_ps_status.SetS("ATTACHED");
  request.AddExpressionAttributeValues(":f", ms_ps_status);
  Aws::DynamoDB::Model::AttributeValue visited_plmnid;
  visited_plmnid.SetS(location.visited_plmnid);
  request.AddExpressionAttributeValues(":g", visited_plmnid);
  std::cout << update_expression << std::endl;
  request.SetUpdateExpression(update_expression);


  // Update the item.
  const Aws::DynamoDB::Model::UpdateItemOutcome& result = dynamoClient.UpdateItem(request);
  if (!result.IsSuccess()) {
    std::cout << result.GetError().GetMessage() << std::endl;
    return false;
  } else {
    std::cout << "Item was updated" << std::endl;
    return true;
  }
}

bool DynamoDb::getImsiSecData(std::string imsi, DDBImsiSec& sec, void* data) {
  Aws::Vector<Aws::String> attributesToGet;
  attributesToGet.push_back(Aws::String("key"));
  attributesToGet.push_back(Aws::String("sqn"));
  attributesToGet.push_back(Aws::String("rand"));
  attributesToGet.push_back(Aws::String("opc"));
  Aws::DynamoDB::Model::GetItemOutcome res = getFromImsi(imsi, attributesToGet);

  if (!res.IsSuccess()) {
    std::cout << res.GetError() << std::endl;
    return false;
  }

  std::string key_str;
  int64_t sqn_nb;
  std::string rand_str;
  std::string OPc_str;

  for (auto& i : res.GetResult().GetItem()) {
    if (i.first == "key") {
      key_str = i.second.GetS();
      continue;
    }
    if (i.first == "sqn") {
      sqn_nb = std::stoi(i.second.GetN());
      continue;
    }
    if (i.first == "rand") {
      rand_str = i.second.GetS();
      continue;
    }
    if (i.first == "opc") {
      OPc_str = i.second.GetS();
      continue;
    }
  }

  convert_ascii_to_binary(sec.key, (uint8_t*) key_str.c_str(), KEY_LENGTH);
  convert_ascii_to_binary(sec.rand, (uint8_t*) rand_str.c_str(), RAND_LENGTH);
  convert_ascii_to_binary(sec.opc, (uint8_t*) OPc_str.c_str(), KEY_LENGTH);

  sec.sqn[0] = (sqn_nb & (255UL << 40)) >> 40;
  sec.sqn[1] = (sqn_nb & (255UL << 32)) >> 32;
  sec.sqn[2] = (sqn_nb & (255UL << 24)) >> 24;
  sec.sqn[3] = (sqn_nb & (255UL << 16)) >> 16;
  sec.sqn[4] = (sqn_nb & (255UL << 8)) >> 8;
  sec.sqn[5] = (sqn_nb & 0xFF);
  return true;
}

bool DynamoDb::updateRandSqn(
    const std::string& imsi, uint8_t* rand_p, uint8_t* sqn, bool inc_sqn,
    void* data) {
  SqnU64Union eu;
  SQN_TO_U64(sqn, eu);

  if (inc_sqn) eu.u64 += 32;

  std::string rand = Utility::bytes2hex(rand_p, RAND_LENGTH);

  const Aws::String keyValue(imsi);

  // Client configs
  Aws::Client::ClientConfiguration clientConfig;
  clientConfig.region = "us-west-2";
  Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);

  // *** Define UpdateItem request arguments
  Aws::DynamoDB::Model::UpdateItemRequest request;
  // Define TableName argument.
  request.SetTableName("subscribers");

  // Define KeyName argument.
  Aws::DynamoDB::Model::AttributeValue attribValue;
  attribValue.SetS(keyValue);
  request.AddKey("imsi", attribValue);

  // Construct the SET update expression argument.
  Aws::String update_expression("SET #a = :valueA, #b = :valueB");
  request.SetUpdateExpression(update_expression);

  request.AddExpressionAttributeNames("#a", "rand");
  request.AddExpressionAttributeNames("#b", "sqn");

  // Construct attribute value argument.
  Aws::DynamoDB::Model::AttributeValue attributeUpdatedValue;
  attributeUpdatedValue.SetS(rand);
  request.AddExpressionAttributeValues(":valueA", attributeUpdatedValue);
  Aws::DynamoDB::Model::AttributeValue attributeUpdatedValue2;
  attributeUpdatedValue2.SetN((float) eu.u64);
  request.AddExpressionAttributeValues(":valueB", attributeUpdatedValue2);

  // Update the item.
  const Aws::DynamoDB::Model::UpdateItemOutcome& result =
      dynamoClient.UpdateItem(request);
  if (!result.IsSuccess()) {
    std::cout << result.GetError().GetMessage() << std::endl;
    return false;
  } else {
    std::cout << "Item was updated" << std::endl;
    return true;
  }

  return false;
}

bool DynamoDb::getEventIdsFromImsi(std::string imsi, DDBEventIdList& ddbel) {
  Aws::Client::ClientConfiguration clientConfig;
  Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);
  Aws::DynamoDB::Model::GetItemRequest req;

  // Set up the request.
  req.SetTableName("events");
  Aws::DynamoDB::Model::AttributeValue hashKey;
  hashKey.SetS(imsi);
  req.AddKey("imsi", hashKey);

  req.AddAttributesToGet("scef_id");
  req.AddAttributesToGet("scef_ref_id");

  // Retrieve the item's fields and values
  Aws::DynamoDB::Model::GetItemOutcome result = dynamoClient.GetItem(req);
  return result.IsSuccess();
}

bool DynamoDb::getEventIdsFromMsisdn(int64_t& msisdn, DDBEventIdList& ddbel, void* data) {
  Aws::Client::ClientConfiguration clientConfig;
  Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);
  Aws::DynamoDB::Model::QueryRequest req;

  // Set up the request.
  req.SetTableName("events");
  Aws::DynamoDB::Model::AttributeValue hashKey;
  hashKey.SetN(std::to_string(msisdn));
  req.SetKeyConditionExpression("msisdn= :val");
  req.AddExpressionAttributeValues(":val", hashKey);
  req.SetIndexName("msisdn");
  req.WithProjectionExpression("scef_id, scef_ref_id");

  Aws::DynamoDB::Model::QueryOutcome result = dynamoClient.Query(req);
  return result.IsSuccess();
}

bool DynamoDb::getMmeIdFromHost(std::string mmehost, int32_t& m_mmeidentity, void* data) {
  Aws::Client::ClientConfiguration clientConfig;
  Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);
  Aws::DynamoDB::Model::QueryRequest req;

  // Set up the request.
  req.SetTableName("subscribers");
  req.SetKeyConditionExpression("mmehost= :val");
  Aws::DynamoDB::Model::AttributeValue hashKey;
  hashKey.SetS(mmehost);
  req.AddExpressionAttributeValues(":val", hashKey);
  req.SetIndexName("mmehost");
  req.WithProjectionExpression("mmeid");

  Aws::DynamoDB::Model::QueryOutcome result = dynamoClient.Query(req);
  const Aws::Vector<Aws::Map<Aws::String, Aws::DynamoDB::Model::AttributeValue>>& items = result.GetResult().GetItems();

  if (result.IsSuccess()) {
        for(const auto &item: items)
        {
        // Output each retrieved field and its value
        for (const auto& i : item) {
            m_mmeidentity = stol(i.second.GetN());
        }
        }
        return true;
  }

  return false;
}

bool DynamoDb::getExtIdsFromImsi(std::string imsi, DDBExtIdList& extids, void* data) {
  Aws::Vector<Aws::String> attributesToGet;
  attributesToGet.push_back("extid");
  Aws::DynamoDB::Model::GetItemOutcome res = getFromImsi(imsi, attributesToGet);

  if (!res.IsSuccess()) {
    std::cout << res.GetError() << std::endl;
    return false;
  }

  for (auto& i : res.GetResult().GetItem()) {
    extids.push_back(i.second.GetS());
  }
  return true;
}

bool DynamoDb::getEventIdsFromExtIdData(
    DDBEventIdList& m_ddbEvtIdLst, Aws::DynamoDB::Model::GetItemOutcome res) {
  for (auto& i : res.GetResult().GetItem()) {
    // DDBEventId* eid = new DDBEventId();
    // if (i.second.GetS() == "scef_id")
    // eid->scef_id = i.second.GetS()
    // m_ddbEvtIdLst.push_
    std::cout << i.first << std::endl;
    // Check to see how the data comes in --> one at a time or together?
  }
  return true;
}

bool DynamoDb::getEventIdsFromExtId(
    std::string extid, DDBEventIdList& m_ddbEvtIdLst) {
  Aws::Client::ClientConfiguration clientConfig;
  Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);
  Aws::DynamoDB::Model::GetItemRequest req;

  // Set up the request.
  req.SetTableName("events");
  Aws::DynamoDB::Model::AttributeValue hashKey;
  hashKey.SetS(extid);
  req.AddKey("extid", hashKey);

  req.AddAttributesToGet("scef_id");
  req.AddAttributesToGet("scef_ref_id");

  Aws::DynamoDB::Model::GetItemOutcome result = dynamoClient.GetItem(req);
  if (result.IsSuccess()) {
    // m_ddbEvtIdLst. =
    // stoi(result.GetResult().GetItem().begin()->second.GetN());
    return true;
  }
  return false;
}  // need to replace with query

Aws::DynamoDB::Model::GetItemOutcome DynamoDb::getFromImsi(
    std::string imsi, Aws::Vector<Aws::String> attributesToGet) {
  Aws::Client::ClientConfiguration clientConfig;
  Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);
  Aws::DynamoDB::Model::GetItemRequest req;

  // Set up the request.
  req.SetTableName("subscribers");
  Aws::DynamoDB::Model::AttributeValue hashKey;
  hashKey.SetS(imsi);
  req.AddKey("imsi", hashKey);
  req.SetAttributesToGet(attributesToGet);

  // Retrieve the item's fields and values
  return dynamoClient.GetItem(req);
}
