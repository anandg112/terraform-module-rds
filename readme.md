## Provisioning postgres on AWS with Docker provisioner
---
This project sets up Postgres 9.6 on AWS and supports encryption at rest.

### Setup
#### Set these variables in your ```.envrc``` file
TF_VAR_user=anand
TF_VAR_owner=anand
TF_VAR_environment=dev
TF_VAR_dbname=postgres
AWS_ACCESS_KEY_ID=test
AWS_SECRET_ACCESS_KEY=test2
ACTION=deploy

---
### Building the docker image

```docker build -f ./docker/Dockerfile -t rds-provisioner .```


### Running the provisioner for Postgres on AWS

```docker run --env-file .envrc rds-provisioner```


---
### Still to do

#### ~~Add CI for checking code defects~~ - Done
#### ~~Put code into a terraform module~~ - Done
#### ~~Docker provisioner~~ - Done
#### Add secrets management
#### Add DB parameter group




