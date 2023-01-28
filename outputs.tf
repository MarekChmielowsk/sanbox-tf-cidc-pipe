output "rnd_str_6_result" {
  description = "Random String bucket params"
  value       = "Random String: ${random_string.rnd_str_6.result} length at ${random_string.rnd_str_6.length}"
}

output "test_bucket_name" {
  description = "Test bucket names"
  value       = "Bucket: ${module.internal_bucket.internal_bucket_name_location}"
}


