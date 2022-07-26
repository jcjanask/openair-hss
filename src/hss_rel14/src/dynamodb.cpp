#include <aws/core/Aws.h>
#include <aws/core/utils/Outcome.h>
#include <aws/dynamodb/DynamoDBClient.h>
#include <aws/dynamodb/model/UpdateItemRequest.h>
#include <aws/dynamodb/model/UpdateItemResult.h>
#include <aws/dynamodb/model/GetItemRequest.h>
#include <iostream>
#include <dynamodb.h>
#include <string>
#include <util.h>



DynamoDb::DynamoDb() {}

DynamoDb::~DynamoDb() {}

void DynamoDb::connect() {
    Aws::InitAPI(options);
    {
    }
}

void DynamoDb::disconnect() {
    Aws::ShutdownAPI(options);
}


#define KEY_LENGTH (16)
#define RAND_LENGTH (16)

#define ASCII_TO_BINARY(c)                                                     \
  (c >= '0' && c <= '9' ?                                                      \
       c - '0' :                                                               \
       c >= 'a' && c <= 'f' ? c - 'a' + 10 :                                   \
                              c >= 'A' && c <= 'F' ? c - 'A' + 10 : 0)

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
        const Aws::String tableName = "subscribers_imsi";
        const Aws::String keyValue(imsi);

        //Client configs
        Aws::Client::ClientConfiguration clientConfig;
        clientConfig.region = "us-west-2";
        Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);

        // *** Define UpdateItem request arguments
        Aws::DynamoDB::Model::UpdateItemRequest request;
        // Define TableName argument.
        request.SetTableName("subscribers_imsi");

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
        const Aws::DynamoDB::Model::UpdateItemOutcome& result = dynamoClient.UpdateItem(request);
        if (!result.IsSuccess())
        {
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
        //Add other attributes to get mmerealm, mmeisdn

        Aws::DynamoDB::Model::GetItemOutcome res = getFromImsi(imsi, attributesToGet);
        if (res.GetResult().GetItem().size() == 2) return true;

        return false;
}

bool DynamoDb::getImsiInfoData(const Aws::Map<Aws::String, Aws::DynamoDB::Model::AttributeValue>& result, 
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
            ddbimsi.msisdn = stoi(i.second.GetN());
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

bool DynamoDb::getImsiInfo(std::string imsi, DDBImsiInfo& ddbimsi) {
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
            const Aws::Map<Aws::String, Aws::DynamoDB::Model::AttributeValue>& item = res.GetResult().GetItem();
            return getImsiInfoData(item, ddbimsi);
        }
        return false;
}

bool DynamoDb::getImsiSecData(std::string imsi, DDBImsiSec sec) {

    Aws::Vector<Aws::String> attributesToGet;
    attributesToGet.push_back(Aws::String("imsi"));
    attributesToGet.push_back(Aws::String("sqn"));
    attributesToGet.push_back(Aws::String("rand"));
    attributesToGet.push_back(Aws::String("opc"));
    Aws::DynamoDB::Model::GetItemOutcome res = getFromImsi(imsi, attributesToGet);

    if (!res.IsSuccess()){
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

    convert_ascii_to_binary(
        sec.key, (uint8_t*) key_str.c_str(), KEY_LENGTH);
    convert_ascii_to_binary(
        sec.rand, (uint8_t*) rand_str.c_str(), RAND_LENGTH);
    convert_ascii_to_binary(
        sec.opc, (uint8_t*) OPc_str.c_str(), KEY_LENGTH);

    sec.sqn[0] = (sqn_nb & (255UL << 40)) >> 40;
    sec.sqn[1] = (sqn_nb & (255UL << 32)) >> 32;
    sec.sqn[2] = (sqn_nb & (255UL << 24)) >> 24;
    sec.sqn[3] = (sqn_nb & (255UL << 16)) >> 16;
    sec.sqn[4] = (sqn_nb & (255UL << 8)) >> 8;
    sec.sqn[5] = (sqn_nb & 0xFF);
    return true;
  }

  bool DynamoDb::updateRandSqn(const std::string& imsi, uint8_t* rand_p, uint8_t* sqn, bool inc_sqn) {
    SqnU64Union eu;
    SQN_TO_U64(sqn, eu);

    if (inc_sqn) eu.u64 += 32;

    std::string rand = Utility::bytes2hex(rand_p, RAND_LENGTH);

    const Aws::String tableName = "subscribers_imsi";
    const Aws::String keyValue(imsi);

    //Client configs
    Aws::Client::ClientConfiguration clientConfig;
    clientConfig.region = "us-west-2";
    Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);

    // *** Define UpdateItem request arguments
    Aws::DynamoDB::Model::UpdateItemRequest request;
    // Define TableName argument.
    request.SetTableName("subscribers_imsi");

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
    Aws::DynamoDB::Model::AttributeValue attributeUpdatedValue2;
    attributeUpdatedValue2.SetN((float)eu.u64);
    request.AddExpressionAttributeValues(":valueB", attributeUpdatedValue2);

    // Update the item.
    const Aws::DynamoDB::Model::UpdateItemOutcome& result = dynamoClient.UpdateItem(request);
    if (!result.IsSuccess())
    {
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

bool DynamoDb::getEventIdsFromMsisdn(int64_t& msisdn, DDBEventIdList& ddbel) {
    Aws::Client::ClientConfiguration clientConfig;
    Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);
    Aws::DynamoDB::Model::GetItemRequest req;

        // Set up the request.
    req.SetTableName("events");
    Aws::DynamoDB::Model::AttributeValue hashKey;
    hashKey.SetN(std::to_string(msisdn));
    req.AddKey("msisdn", hashKey);

    req.AddAttributesToGet("scef_id");
    req.AddAttributesToGet("scef_ref_id");

    Aws::DynamoDB::Model::GetItemOutcome result = dynamoClient.GetItem(req);
    return result.IsSuccess();
}

 bool DynamoDb::getMmeIdFromHost(std::string mmehost, int32_t& m_mmeidentity) {
    Aws::Client::ClientConfiguration clientConfig;
    Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);
    Aws::DynamoDB::Model::GetItemRequest req;

        // Set up the request.
    req.SetTableName("subscribers_imsi");
    Aws::DynamoDB::Model::AttributeValue hashKey;
    hashKey.SetS(mmehost);
    req.AddKey("mmehost", hashKey);

    req.AddAttributesToGet("mmeid");

    Aws::DynamoDB::Model::GetItemOutcome result = dynamoClient.GetItem(req);
    if (result.IsSuccess()) {
        m_mmeidentity = stoi(result.GetResult().GetItem().begin()->second.GetN());
        return true;
    }
    return false;
 }

bool DynamoDb::getExtIdsFromImsi(std::string imsi, DDBExtIdList& extids) {
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

bool DynamoDb::getEventIdsFromExtIdData(DDBEventIdList& m_ddbEvtIdLst, Aws::DynamoDB::Model::GetItemOutcome res) {
    for (auto& i : res.GetResult().GetItem()) {
        // DDBEventId* eid = new DDBEventId();
        // if (i.second.GetS() == "scef_id")
        // eid->scef_id = i.second.GetS()
        // m_ddbEvtIdLst.push_
        std::cout << i.first << std::endl;
        //Check to see how the data comes in --> one at a time or together?
    }
    return true;
}

bool DynamoDb::getEventIdsFromExtId(std::string extid, DDBEventIdList& m_ddbEvtIdLst) {
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
        //m_ddbEvtIdLst. = stoi(result.GetResult().GetItem().begin()->second.GetN());
        return true;
    }
    return false;
} //need to replace with query


Aws::DynamoDB::Model::GetItemOutcome DynamoDb::getFromImsi(std::string imsi, Aws::Vector<Aws::String> attributesToGet) {

        Aws::Client::ClientConfiguration clientConfig;
        Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);
        Aws::DynamoDB::Model::GetItemRequest req;

        // Set up the request.
        req.SetTableName("subscribers_imsi");
        Aws::DynamoDB::Model::AttributeValue hashKey;
        hashKey.SetS(imsi);
        req.AddKey("imsi", hashKey);
        req.SetAttributesToGet(attributesToGet);

        // Retrieve the item's fields and values
        return dynamoClient.GetItem(req);
}




