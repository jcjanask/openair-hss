#ifndef __DYNAMODB_H_
#define __DYNAMODB_H_

#include <string>
#include <aws/core/Aws.h>
#include <aws/dynamodb/DynamoDBClient.h>
#include <util.h>
#define KEY_LENGTH (16)
#define SQN_LENGTH (6)
#define RAND_LENGTH (16)
#define OPC_LENGTH (16)

struct DDBImsiSec {
  uint8_t key[KEY_LENGTH];
  uint8_t sqn[SQN_LENGTH];
  uint8_t rand[RAND_LENGTH];
  uint8_t opc[OPC_LENGTH];
};

class DDBExtIdList : public std::list<std::string> {
 public:
  DDBExtIdList() {}
  ~DDBExtIdList() {}
};



struct DDBImsiInfo {
  std::string imsi;
  std::string mmehost;
  std::string mmerealm;
  std::string ms_ps_status;
  std::string subscription_data;
  int64_t msisdn;
  std::string str_msisdn;
  std::string visited_plmnid;
  int32_t access_restriction;
  std::string imei;
  std::string imei_sv;
  int32_t mmeid;
};

struct DDBEventId {
  std::string scef_id;
  uint32_t scef_ref_id;
};

class DDBEventIdList : public std::list<DDBEventId*> {
 public:
  DDBEventIdList();
  ~DDBEventIdList();

  static bool compare(DDBEventId* l, DDBEventId* r) {
    if (l->scef_id < r->scef_id) return true;
    if (l->scef_id > r->scef_id) return false;
    return l->scef_ref_id < r->scef_ref_id;
  }
};

class DynamoDb {
 public:
   DynamoDb();
   virtual ~DynamoDb();
   void connect();
   void disconnect();
   std::string getRegion() { return USER_REGION; }
   bool purgeUe(std::string imsi);
   bool getMmeIdentityFromImsi(std::string imsi);
   bool getImsiInfo(std::string imsi, DDBImsiInfo& ddbimsi, void* data);
   void convert_ascii_to_binary(unsigned char* dest, unsigned char* src, int length);
   bool getImsiSecData(std::string imsi, DDBImsiSec& sec, void* data);
   bool updateRandSqn(const std::string& imsi, uint8_t* rand_p, uint8_t* sqn, bool inc_sqn, void* data);
   bool getExtIdsFromImsi(std::string imsi, DDBExtIdList& extids, void* data);
   bool getEventIdsFromImsi(std::string imsi, DDBEventIdList& ddbEvtLst);
   bool getImsiInfoData(const Aws::Map<Aws::String, Aws::DynamoDB::Model::AttributeValue>&, 
    DDBImsiInfo& ddbimsi);
   bool getEventIdsFromMsisdn(int64_t& msisdn, DDBEventIdList& m_ddbEvtIdLst, void* data);
   bool getMmeIdFromHost(std::string mmehost, int32_t& mmeid, void* data);
   bool getEventIdsFromExtId(std::string extid, DDBEventIdList& m_ddbEvtIdLst);
   bool getEventIdsFromExtIdData(DDBEventIdList& m_ddbEvtIdLst, Aws::DynamoDB::Model::GetItemOutcome res);
   bool checkOpcKeys(const uint8_t opP[16]);
   bool updateOpc(std::string& imsi, std::string& opc);
   Aws::DynamoDB::Model::GetItemOutcome getFromImsi(std::string imsi, Aws::Vector<Aws::String> attributesToGet);   

 private:
   const std::string USER_REGION; 
   Aws::SDKOptions options;
};


#endif /* __DYNAMODB_H */