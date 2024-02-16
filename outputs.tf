##################
# Bucket Outputs #
##################

output "aws_bucket_domain_name" {
  description = "The domain name of the aws bucket"
  value       = module.aws-bucket.bucket_domain_name
}

output "gcp_bucket_domain_name" {
  description = "The domain name of the gcp bucket"
  value       = module.gcp-bucket.bucket_domain_name
}
