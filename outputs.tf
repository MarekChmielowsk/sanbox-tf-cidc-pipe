output "rnd_str_6_result" {
  description = "Random String bucket params"
  value       = "Random String: ${module.rnd_str_6.result} length at ${module.rnd_str_6_bucket.length}"
}

output "test_bucket_name" {
  description = "Test bucket namer"
  value       = "Bucket: ${module.internal_bucket.name} created at ${module.internal_bucket.location}"
}


