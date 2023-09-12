variable "secretsmanager_secret" {
  description = "Name of tyeh secret (not the value)"
  type        = string
}

variable "db_name_prefix" {
  description = "Database name prefix (conflicts with db_name)"
  type        = string
}

variable "db_identifier_prefix" {
  description = "Database identifier prefix"
  type        = string
}

variable "db_allocated_storage" {
  default = 10
}

variable "db_storage_type" {
  default = "gp2"
}

variable "db_engine" {}

variable "db_engine_version" {}

variable "db_instance_class" {
  default = "db.t3.micro"
}

variable "db_parameter_group_name" {}

variable "db_deletion_protection" {
  default = false
}

variable "db_subnet_group_name" {
  default = "private"
}

variable "db_multi_az" {
  default = false
}

variable "db_vpc_security_group_ids" {}

variable "db_backup_retention_period" {
  default = 7
}

variable "db_name" {}

variable "db_final_snapshot_identifier" {}

variable "db_user" {}

variable "vpc_name" {}

variable "ca_cert_identifier" {
  default     = "rds-ca-rsa2048-g1"
  description = "The certificate authority (CA) that signs the DB server certificate, for your database."
  type        = string
}
