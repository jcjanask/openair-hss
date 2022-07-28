region=$3
# apn=$3
# key=$4
# region=$5


 


aws dynamodb batch-write-item --region $region --request-items file://../etc/subscribers.json 
# '{"imsi": {"S": "$imsi"}, "access_restriction": {"N": "41"}, "key": {"S": "8baf473f2f8fd09487cccbd7097c6862"}, "msisdn": {"N": "$msisdn"} }'

echo -e "The provisioning is successful\n"


