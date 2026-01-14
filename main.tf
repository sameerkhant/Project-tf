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



module "s3" {
  source      = "./modules/s3"
  bucket_name ="sameer-teeraform"

}

module "iam_user" {
  source      = "./modules/iam_user"
  users       = ["jhon", "paul"]
}

