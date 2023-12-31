resource "aws_db_instance" "this" {
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
  apply_immediately          = var.apply_immediately
  identifier_prefix          = local.db_identifier_prefix
  allocated_storage          = var.db_allocated_storage
  storage_encrypted          = true
  storage_type               = var.db_storage_type
  engine                     = var.db_engine
  engine_version             = var.db_engine_version
  instance_class             = var.db_instance_class
  max_allocated_storage      = var.db_max_allocated_storage
  parameter_group_name       = var.db_parameter_group_name
  deletion_protection        = var.db_deletion_protection
  vpc_security_group_ids     = [var.db_vpc_security_group_ids]
  db_subnet_group_name       = var.db_subnet_group_name
  multi_az                   = var.db_multi_az
  ca_cert_identifier         = var.ca_cert_identifier

  maintenance_window        = "sat:09:13-sat:10:43"
  backup_window             = "05:53-07:23"
  backup_retention_period   = var.db_backup_retention_period
  final_snapshot_identifier = local.db_final_snapshot_identifier
  copy_tags_to_snapshot     = true

  db_name  = var.db_name
  username = module.secret.db_admin_user
  password = module.secret.random_password_result

  tags = merge(
    {
      "module"    = "https://github.com/CapnDucks/aws_rds"
      "terraform" = "true"
    },
      local.tags,
  )
}
