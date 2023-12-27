variable "secretsmanager_secret" {
  default     = null
  description = "Name of the secret (not the value)."
  type        = string
}

variable "db_name_prefix" {
  default     = null
  description = "Database name prefix (conflicts with db_name)."
  type        = string
}

variable "db_identifier_prefix" {
  default     = null
  description = "Database identifier prefix."
  type        = string
}

variable "db_allocated_storage" {
  default     = 10
  description = ""
  type        = number
}

variable "db_max_allocated_storage" {
  default     = null
  description = ""
  type        = number
}

variable "db_storage_type" {
  default     = "gp3"
  description = ""
  type        = string
}

variable "db_engine" {
  default     = null
  description = ""
  type        = string
}

variable "db_engine_version" {
  default     = null
  description = ""
  type        = number
}

variable "db_instance_class" {
  default = null
  type    = string
}

variable "db_parameter_group_name" {
  default     = null
  description = ""
  type        = string
}

variable "db_deletion_protection" {
  default     = false
  description = ""
  type        = bool
}

variable "db_subnet_group_name" {
  default     = "private"
  description = ""
  type        = string
}

variable "db_multi_az" {
  default     = false
  description = ""
  type        = bool
}

variable "db_vpc_security_group_ids" {
  default     = null
  description = ""
  type        = string

}

variable "db_backup_retention_period" {
  default     = 7
  description = ""
  type        = string
}

variable "db_name" {
  default     = null
  description = ""
  type        = string
}

variable "db_final_snapshot_identifier" {
  default     = null
  description = ""
  type        = string
}

variable "db_admin_user" {
  default     = null
  description = ""
  type        = string
}

variable "vpc_name" {
  default     = null
  description = ""
  type        = string
}

variable "ca_cert_identifier" {
  default     = "rds-ca-rsa2048-g1"
  description = "The certificate authority (CA) that signs the DB server certificate, for your database."
  type        = string
}

variable "apply_immediately" {
  default     = false
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window. Default is false."
  type        = bool
}

variable "region" {
  default     = "us-west-2"
  description = ""
  type        = string
}
