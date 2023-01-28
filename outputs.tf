output "test_bucket_name" {
  description = "Test bucket namer"
  value       = "Bucket: ${module.google_storage_bucket.name} created at ${module.internal_bucket.bucket_location}"
}


