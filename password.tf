resource "random_string" "password" {
  count   = "${var.enabled ? 1 : 0}"
  length  = 16
  special = true
}

resource "aws_ssm_parameter" "vault_db_password" {
  count = "${var.enabled ? 1 : 0}"
  name  = "/database/password/master"
  type  = "SecureString"
  value = "${random_string.password[count.index].result}"
}