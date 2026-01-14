terraform {
  backend "s3" {
    bucket  = "sameer-teeraform"
    key     = "terraform/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}
