module "rds-db" {
  source      = "./rds"
  dbname      = var.dbname
  owner       = var.owner
  user        = var.user
  environment = var.environment
}