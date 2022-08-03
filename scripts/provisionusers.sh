#! /bin/bash

region=$1

aws dynamodb batch-write-item --region $region --request-items file://../etc/subscribers.json 


