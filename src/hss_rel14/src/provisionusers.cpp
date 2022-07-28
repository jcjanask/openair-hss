#include <aws/core/Aws.h>
#include <aws/core/utils/Outcome.h> 
#include <aws/dynamodb/DynamoDBClient.h>
#include <aws/dynamodb/model/AttributeDefinition.h>
#include <aws/dynamodb/model/PutItemRequest.h>
#include <aws/dynamodb/model/PutItemResult.h>
#include <aws/dynamodb/model/ListTablesRequest.h>
#include <aws/dynamodb/model/ListTablesResult.h>
#include <iostream>
#include <provisionusers.h>


//imsi, msisdn, access_restriction, key, mmehost, mmeidentity_idmmeidentity, mmerealm, rand, sqn, subscription_data)
// VALUES ('$imsi', $msisdn, 41, '$key', 'mme.localdomain', 3, 'localdomain', '2683b376d1056746de3b254012908e0e', 96, '{\"Subscription-Data\":{\"Access-Restriction-Data\":41,\"Subscriber-Status\":0,\"Network-Access-Mode\":2,\"Regional-Subscription-Zone-Code\":[\"0x0123\",\"0x4567\",\"0x89AB\",\"0xCDEF\",\"0x1234\",\"0x5678\",\"0x9ABC\",\"0xDEF0\",\"0x2345\",\"0x6789\"],\"MSISDN\":\"0x$msisdn\",\"AMBR\":{\"Max-Requested-Bandwidth-UL\":50000000,\"Max-Requested-Bandwidth-DL\":100000000},\"APN-Configuration-Profile\":{\"Context-Identifier\":0,\"All-APN-Configurations-Included-Indicator\":0,\"APN-Configuration\":{\"Context-Identifier\":0,\"PDN-Type\":0,\"Served-Party-IP-Address\":[\"10.0.0.1\",\"10.0.0.2\"],\"Service-Selection\":\"apn1\",\"EPS-Subscribed-QoS-Profile\":{\"QoS-Class-Identifier\":9,\"Allocation-Retention-Priority\":{\"Priority-Level\":15,\"Pre-emption-Capability\":0,\"Pre-emption-Vulnerability\":0}},\"AMBR\":{\"Max-Requested-Bandwidth-UL\":50000000,\"Max-Requested-Bandwidth-DL\":100000000},\"PDN-GW-Allocation-Type\":0,\"MIP6-Agent-Info\":{\"MIP-Home-Agent-Address\":[\"172.26.17.183\"]}}},\"Subscribed-Periodic-RAU-TAU-Timer\":0}}'
bool ProvisionUsers::addUser(Aws::String imsi, Aws::String msisdn,  Aws::String mmehost,
Aws::String mmeid, Aws::String access_restriction, Aws::String key,
Aws::String mmerealm, Aws::String rand, Aws::String sqn, Aws::String opc,
Aws::String subscription_data)
 {
        Aws::Client::ClientConfiguration clientConfig;
        clientConfig.region = "us-west-2";
        Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);

        Aws::DynamoDB::Model::PutItemRequest putItemRequest;
        putItemRequest.SetTableName("subscribers");

        Aws::DynamoDB::Model::AttributeValue imsiVal;
        imsiVal.SetS(imsi);

        Aws::DynamoDB::Model::AttributeValue msisdnVal;
        msisdnVal.SetN(msisdn);

        Aws::DynamoDB::Model::AttributeValue mmehostVal;
        mmehostVal.SetS(mmehost); 

        Aws::DynamoDB::Model::AttributeValue mmeidVal;
        mmeidVal.SetN(mmeid);

        Aws::DynamoDB::Model::AttributeValue a_rVal;
        a_rVal.SetN(access_restriction);

        Aws::DynamoDB::Model::AttributeValue keyVal;
        keyVal.SetS(key); 

        Aws::DynamoDB::Model::AttributeValue mmerealmVal;
        mmerealmVal.SetS(mmerealm);

        Aws::DynamoDB::Model::AttributeValue randVal;
        randVal.SetS(rand);

        Aws::DynamoDB::Model::AttributeValue sqnVal;
        sqnVal.SetN(sqn);    

        Aws::DynamoDB::Model::AttributeValue opcVal;
        opcVal.SetS(opc);    

        Aws::DynamoDB::Model::AttributeValue subscription_dataVal;
        subscription_dataVal.SetS(subscription_data);


        putItemRequest.AddItem("imsi", imsiVal);
        putItemRequest.AddItem("msisdn", msisdnVal);
        putItemRequest.AddItem("mmehost", mmehostVal);
        putItemRequest.AddItem("mmeid", mmeidVal);
        putItemRequest.AddItem("access_restriction", a_rVal);
        putItemRequest.AddItem("key", keyVal);
        putItemRequest.AddItem("mmerealm", mmerealmVal);
        putItemRequest.AddItem("rand", randVal);
        putItemRequest.AddItem("sqn", sqnVal);
        putItemRequest.AddItem("opc", opcVal);
        putItemRequest.AddItem("subscription_data", subscription_dataVal);

        const Aws::DynamoDB::Model::PutItemOutcome result = dynamoClient.PutItem(putItemRequest);
        if (result.IsSuccess()) 
        {
            std::cout << "Successful add" << std::endl;
            return 0;
        } else {
            std::cout << result.GetError().GetMessage() << std::endl;
            return 1;
        }
}


bool ProvisionUsers::addUsers() {

        // long imsi = strtol(argv[1], nullptr, 0);
        // long msisdn = strtol(argv[2], nullptr, 0);
        long imsi = 222010100001146;
        long msisdn = 3019800900;
        bool res = 1;
        for (int i = 0; i <= 20; i++) {
            std::string imsiStr = std::to_string(imsi);
            std::string msisdnStr = std::to_string(msisdn);
            res = addUser(imsiStr, msisdnStr, "mme.openair4G.eur", "3", 
                "41", "8baf473f2f8fd09487cccbd7097c6862", "openair4G.eur", "2683b376d1056746de3b254012908e0e", "96", "8e27b6af0e692e750f32667a3b14605d",
                "{\"Subscription-Data\":{\"Access-Restriction-Data\":41,\"Subscriber-Status\":0,\"Network-Access-Mode\":2,\"Regional-Subscription-Zone-Code\":[\"0x0123\",\"0x4567\",\"0x89AB\",\"0xCDEF\",\"0x1234\",\"0x5678\",\"0x9ABC\",\"0xDEF0\",\"0x2345\",\"0x6789\"],\"MSISDN\":\"0x$msisdn\",\"AMBR\":{\"Max-Requested-Bandwidth-UL\":50000000,\"Max-Requested-Bandwidth-DL\":100000000},\"APN-Configuration-Profile\":{\"Context-Identifier\":0,\"All-APN-Configurations-Included-Indicator\":0,\"APN-Configuration\":{\"Context-Identifier\":0,\"PDN-Type\":0,\"Served-Party-IP-Address\":[\"10.0.0.1\",\"10.0.0.2\"],\"Service-Selection\":\"apn1\",\"EPS-Subscribed-QoS-Profile\":{\"QoS-Class-Identifier\":9,\"Allocation-Retention-Priority\":{\"Priority-Level\":15,\"Pre-emption-Capability\":0,\"Pre-emption-Vulnerability\":0}},\"AMBR\":{\"Max-Requested-Bandwidth-UL\":50000000,\"Max-Requested-Bandwidth-DL\":100000000},\"PDN-GW-Allocation-Type\":0,\"MIP6-Agent-Info\":{\"MIP-Home-Agent-Address\":[\"172.26.17.183\"]}}},\"Subscribed-Periodic-RAU-TAU-Timer\":0}}");
            if (!res) return 1;

            imsi = imsi + 1;
            msisdn = msisdn + 1;
        }
    return 0;
}