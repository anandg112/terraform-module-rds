## Provisioning postgres (RDS) on AWS with a Docker provisioner

---

This project sets up Postgres 9.6 on AWS and supports encryption at rest.

### Setup

#### Set these variables in your `.envrc` file

```bash
TF_VAR_user=anand
TF_VAR_owner=anand
TF_VAR_environment=dev
TF_VAR_dbname=postgres
AWS_ACCESS_KEY_ID=test
AWS_SECRET_ACCESS_KEY=test2
ACTION=deploy
```

---

### Building the docker image

```bash
docker build -f ./provisioner/Dockerfile -t rds-provisioner .
```

### Running the provisioner for Postgres on AWS

```bash
docker run --env-file .envrc rds-provisioner
```

---

### Release

This project uses GitHub Actions to release new versions of the terraform module through semantic-release NPM package. GitHub Actions also performs a `terraform plan` `terraform fmt` to ensure module is tested and formatted properly.

### Still to do

#### ~~Add CI for checking code defects~~ - Done

#### ~~Put code into a terraform module~~ - Done

#### ~~Docker provisioner~~ - Done

#### Add secrets management

#### Add DB parameter group
