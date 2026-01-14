# Optional in root if you want to parameterize users/policies
variable "users" {
  type = list(string)
}


variable "vpc_id" {}

variable "allowed_cidr" {
  default = ["0.0.0.0/0"] # ⚠ restrict in prod
}

variable "db_name" {
  default = "myappdb"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  sensitive = true
}

variable "db_instance_class" {
  default = "db.t3.medium"
}

variable "db_allocated_storage" {
  default = 20
}





