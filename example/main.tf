module "rds" {
  source = "../"

  db_final_snapshot_identifier = "db_final_snapshot_identifier"
  db_user                      = "db_user"
  db_identifier_prefix         = "db_identifier_prefix"
  db_engine                    = "mysql"
  vpc_name                     = "capnduck"
  db_engine_version            = "5.7"
  db_vpc_security_group_ids    = ""
  db_name                      = "db_name"
  db_name_prefix               = "db_name_prefix"
  db_parameter_group_name      = ""
  secretsmanager_secret        = "name_of_secret"
}
