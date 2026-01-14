


output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "instance_ids" {
  value = module.ec2.instance_ids
}

output "bucket_id" {
  value = module.s3.bucket_id
}

output "user_names" {
  value = module.iam_user.user_names
}

