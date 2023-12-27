locals {
  db_identifier_prefix         = lower(replace(var.db_identifier_prefix, "_", "-"))  # only lowercase alphanumeric characters and hyphens allowed in "identifier_prefix"
  db_final_snapshot_identifier = replace(var.db_final_snapshot_identifier, "_", "-") # must only contain alphanumeric characters and hyphens

  tags = {
    terraform = "true"
  }
}
