#!/bin/sh 

export TF_VAR_user="anand"
export TF_VAR_owner="anand"
export TF_VAR_environment="dev"
export TF_VAR_dbname="postgres"



terraform init -backend=true \
-backend-config=bucket\=tf-state-anand \
-backend-config=key\=state \
-backend-config=region\=us-east-1 \
-input=false \

terraform plan