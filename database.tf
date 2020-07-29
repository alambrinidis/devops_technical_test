resource "aws_db_subnet_group" "database_subnet_group" {
  name       = "database-rds-subnet"
  subnet_ids = "${var.database_subnets}"
}

resource "aws_db_instance" "database" {
  count                = "${var.enabled ? 1 : 0}"
  identifier           = "database-rds"
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7.22"
  instance_class       = "db.t2.micro"
  multi_az             = true
  name                 = "my_database"
  username             = "admin"
  password             = "${random_string.password[count.index].result}"
  db_subnet_group_name = "database_subnet_group"
  parameter_group_name = "db-mysql"
}