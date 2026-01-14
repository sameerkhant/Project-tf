/* 
resource "aws_db_instance" "this" {
  identifier        = "mysql-db"
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = var.instance_class
  allocated_storage = var.allocated_storage

  db_name  = var.db_name
  username = var.db_username
  password = var.db_password

  vpc_security_group_ids = [var.sg_id]

  publicly_accessible = true
  skip_final_snapshot = true

  tags = {
    Name = "Terraform-MySQL"
    Env  = "Dev"
  }
}
 */