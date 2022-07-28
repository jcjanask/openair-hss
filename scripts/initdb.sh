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