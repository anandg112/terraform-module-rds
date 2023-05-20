output "endpoint" {
  value = module.rds-db.endpoint
}

output "id" {
  value = module.rds-db.instance-id
}

output "arn" {
  value = module.rds-db.rds-arn
}

output "hostname" {
  value = module.rds-db.rds-hostname
}
