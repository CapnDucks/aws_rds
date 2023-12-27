module "secret" {
  #source = "../secret"
  source = "git::https://github.com/CapnDucks/aws_secret?ref=1.1"

  db_admin_user          = var.db_admin_user
  secrets_manager_secret = var.secretsmanager_secret
}
