output "bucket_domain_name" {
  description = "The domain name of the bucket"
  value       = google_storage_bucket.bucket.website
}

output "bucket_id" {
  description = "The id of the bucket"
  value       = google_storage_bucket.bucket.id
}

output "bucket_name" {
  description = "The name of the bucket"
  value       = google_storage_bucket.bucket.name
}
