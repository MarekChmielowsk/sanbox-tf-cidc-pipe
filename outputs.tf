output "test_bucket_name" {
  description = "Test bucket namer"
  value       = "Bucket: ${module.bucket_internal.name} created at ${module.internal_bucket.bucket_location}"
}


