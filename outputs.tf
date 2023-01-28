output "rnd_str_6_result" {
  description = "Random String bucket params"
  value       = "Random String: ${rnd_str_6.result} length at ${rnd_str_6.length}"
}

output "test_bucket_name" {
  description = "Test bucket namer"
  value       = "Bucket: ${module.internal_bucket.internal_bucket_name_location}"
}


