#!/bin/sh -ex

terraform init -backend=true \
-backend-config=bucket\=tf-state-anand \
-backend-config=key\=state \
-backend-config=region\=us-east-1 \
-input=false \

NOW=$date

if [ $ACTION == "deploy" ]
then
    echo "Deployment started at $NOW" 
    terraform apply -auto-approve
elif [ $ACTION == "destroy" ]
then
    echo "Teardown started at $NOW"
    terraform destroy -auto-approve
fi
