variable "alb_name" {}
variable "vpc_id" {}
variable "subnet_ids" {
  type = list(string)
}
variable "sg_ids" {
  type = list(string)
}
variable "listener_port" {
  default = 80
}
variable "target_port" {
  default = 80
}
variable "health_check_path" {
  default = "/"
}
variable "env" {
  default = "dev"
}
