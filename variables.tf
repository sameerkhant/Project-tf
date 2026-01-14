# Optional in root if you want to parameterize users/policies
variable "users" {
  type = list(string)
  
}

variable "vpc_id" {}

variable "allowed_cidr" {
  default = ["0.0.0.0/0"] # ⚠ restrict in prod
  
}





