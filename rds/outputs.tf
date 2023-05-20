output "endpoint" {
  value = aws_db_instance.anand-db.endpoint
}

output "instance-id" {
  value = aws_db_instance.anand-db.id
}

output "rds-arn" {
  value = aws_db_instance.anand-db.arn
}

output "rds-hostname" {
  value = aws_db_instance.anand-db.address
}
