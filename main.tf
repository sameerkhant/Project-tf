provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source             = "./modules/vpc"
  cidr_block         = "10.0.0.0/16"
  name               = "my-vpc"
  public_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones = ["ap-south-1a", "ap-south-1b"]
}

module "ec2" {
  source       = "./modules/ec2"
  ami          = "ami-0a53c9cb814d358ff" 
  instance_type = "t2.micro"
  subnet_ids   = module.vpc.public_subnet_ids
  name         = "my-ec2test"
}

  module "alb" {
  source     = "./modules/alb"
  alb_name   = "myapp-alb"
  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnet_ids   
  sg_ids     = [module.mysql_sg.sg_id]       
  env        = "dev"
}

module "s3" {
  source      = "./modules/s3"
  bucket_name ="sameer-teeraform"

}

module "iam_user" {
  source      = "./modules/iam_user"
  users       = ["alice", "bob", "charlie"]
}

/*
module "mysql_sg" {
  source = "./modules/mysql_sg"
  sg_name   = "mysql_sg"
  vpc_id   = module.vpc.vpc_id
  cidr_ips = var.allowed_cidr
}

module "rds_mysql" {
  source = "./modules/rds_mysql"

  db_name           = var.db_name
  db_username       = var.db_username
  db_password       = var.db_password
  instance_class    = var.db_instance_class
  allocated_storage = var.db_allocated_storage
  sg_id             = module.mysql_sg.sg_id
}

*/