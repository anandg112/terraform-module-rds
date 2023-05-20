provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "tf-state-anand"
    key    = "state/"
    region = "us-east-1"
  }
}

resource "random_string" "password" {
  length  = 16
  special = true
}

resource "aws_db_instance" "anand-db" {
  engine              = "postgres"
  engine_version      = "9.6.12"
  instance_class      = "db.t2.medium"
  identifier          = local.identifier
  name                = var.dbname
  username            = var.user
  password            = random_string.password.result
  multi_az            = "true"
  storage_encrypted   = "true"
  allocated_storage   = 20
  storage_type        = "gp2"
  skip_final_snapshot = "true"
}
