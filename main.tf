module "secret" {
  source = "git::https://github.com/CapnDucks/aws_secret?ref=v1.0.0"

  secrets_manager_secret = var.secretsmanager_secret
}

resource "aws_db_instance" "this" {
  apply_immediately      = var.apply_immediately
  identifier_prefix      = var.db_identifier_prefix
  allocated_storage      = var.db_allocated_storage
  storage_encrypted      = true
  storage_type           = var.db_storage_type
  engine                 = var.db_engine
  engine_version         = var.db_engine_version
  instance_class         = var.db_instance_class
  parameter_group_name   = var.db_parameter_group_name
  deletion_protection    = var.db_deletion_protection
  vpc_security_group_ids = [var.db_vpc_security_group_ids]
  db_subnet_group_name   = var.db_subnet_group_name
  multi_az               = var.db_multi_az
  ca_cert_identifier     = var.ca_cert_identifier

  maintenance_window        = "sat:09:13-sat:10:43"
  backup_window             = "05:53-07:23"
  backup_retention_period   = var.db_backup_retention_period
  final_snapshot_identifier = var.db_final_snapshot_identifier
  copy_tags_to_snapshot     = true

  db_name  = var.db_name
  username = var.db_user
  password = module.secret.random_password_result
}
