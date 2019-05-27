## Provisioning postgres on AWS
---
This project sets up  Postgres 9.6 on AWS and supports encryption at rest.

### Setup
#### Set these variables in your ```terraform.tfvars``` file
user = ""\
owner = ""\
environment = ""\
dbname = ""

---
### Provisioning

```terraform init```\
```terraform plan```\
```terraform apply```
#### type yes on prompt

---
### Still to do

#### ~~Add CI for checking code defects~~ - Done
#### ~~Put code into a terraform module~~ - Done
#### Add secrets management
#### Add DB parameter group
#### Use Terraform 0.12 new remote state management




