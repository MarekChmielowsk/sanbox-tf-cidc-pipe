output "test_bucket_name" {
  description = "Test bucket namer"
  value       = "Bucket: ${module.internal_bucket.name} created at ${module.internal_bucket.location}"
}


