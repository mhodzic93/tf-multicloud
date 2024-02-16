output "bucket_arn" {
  description = "The arn of the bucket"
  value       = aws_s3_bucket.bucket.arn
}

output "bucket_domain_name" {
  description = "The domain name of the bucket"
  value       = aws_s3_bucket.bucket.bucket_domain_name
}

output "bucket_name" {
  description = "The name of the bucket"
  value       = aws_s3_bucket.bucket.id
}
