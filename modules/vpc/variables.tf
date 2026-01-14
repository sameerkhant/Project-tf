variable "cidr_block" {}
variable "name" {}
variable "public_subnets" {
  type = list(string)
}
variable "availability_zones" {
  type = list(string)
}
