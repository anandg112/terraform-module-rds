variable "region" {
  default = "us-east-1"
}

locals {
  identifier = "${var.environment}-${var.owner}-postgres"
}

variable "dbname" {
  type = "string"
}

variable "user" {
  type = "string"
}

variable "owner" {
  type = "string"
}

variable environment {
  type = "string"
}
