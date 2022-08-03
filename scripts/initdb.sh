#! /bin/bash

region=$1

aws dynamodb create-table --region $region --table-name subscribers --attribute-definitions AttributeName=imsi,AttributeType=S \
    AttributeName=msisdn,AttributeType=N AttributeName=mmehost,AttributeType=S AttributeName=mmeid,AttributeType=N \
    --key-schema AttributeName=imsi,KeyType=HASH --provisioned-throughput ReadCapacityUnits=10,WriteCapacityUnits=5 --global-secondary-indexes \
        "[
            {
                \"IndexName\": \"msisdn\",
                \"KeySchema\": [{\"AttributeName\":\"msisdn\",\"KeyType\":\"HASH\"}],
                \"Projection\": {\"ProjectionType\":\"ALL\"},
                \"ProvisionedThroughput\": {
                    \"ReadCapacityUnits\": 10,
                    \"WriteCapacityUnits\": 5
                }
            },
            {
                \"IndexName\": \"mmehost\",
                \"KeySchema\": [{\"AttributeName\":\"mmehost\",\"KeyType\":\"HASH\"}],
                \"Projection\": {\"ProjectionType\":\"ALL\"},
                \"ProvisionedThroughput\": {
                \"ReadCapacityUnits\": 10,
                \"WriteCapacityUnits\": 5
                }
            },
            {
                \"IndexName\": \"mmeid\",
                \"KeySchema\": [{\"AttributeName\":\"mmeid\",\"KeyType\":\"HASH\"}],
                \"Projection\": {\"ProjectionType\":\"ALL\"},
                \"ProvisionedThroughput\": {
                \"ReadCapacityUnits\": 10,
                \"WriteCapacityUnits\": 5
                }
            }
            ]"

aws dynamodb wait table-exists --table-name subscribers

aws dynamodb create-table --region $region --table-name events --attribute-definitions AttributeName=scef_id,AttributeType=S \
    AttributeName=scef_ref_id,AttributeType=N AttributeName=extid,AttributeType=S AttributeName=imsi,AttributeType=S \
    AttributeName=msisdn,AttributeType=N --key-schema AttributeName=scef_id,KeyType=HASH AttributeName=scef_ref_id,KeyType=RANGE \
    --provisioned-throughput ReadCapacityUnits=10,WriteCapacityUnits=5 --global-secondary-indexes \
        "[
            {
                \"IndexName\": \"extid\",
                \"KeySchema\": [{\"AttributeName\":\"extid\",\"KeyType\":\"HASH\"}],
                \"Projection\": {\"ProjectionType\":\"ALL\"},
                \"ProvisionedThroughput\": {
                    \"ReadCapacityUnits\": 10,
                    \"WriteCapacityUnits\": 5
                }
            },
            {
                \"IndexName\": \"imsi\",
                \"KeySchema\": [{\"AttributeName\":\"imsi\",\"KeyType\":\"HASH\"}],
                \"Projection\": {\"ProjectionType\":\"ALL\"},
                \"ProvisionedThroughput\": {
                \"ReadCapacityUnits\": 10,
                \"WriteCapacityUnits\": 5
                }
            },
            {
                \"IndexName\": \"msisdn\",
                \"KeySchema\": [{\"AttributeName\":\"msisdn\",\"KeyType\":\"HASH\"}],
                \"Projection\": {\"ProjectionType\":\"ALL\"},
                \"ProvisionedThroughput\": {
                \"ReadCapacityUnits\": 10,
                \"WriteCapacityUnits\": 5
                }
            }
            ]"