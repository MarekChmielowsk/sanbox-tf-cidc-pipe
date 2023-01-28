output "rnd_str_6_result" {
  description = "Random String bucket params"
  value       = "Random String: ${random_string.rnd_str_6.result} length at ${random_string.rnd_str_6.length}"
}

output "test_bucket_0_location" {
  description = "Test bucket[0] location"
  value       = module.internal_bucket.internal_bucket_0_location
}
  
output "test_buckets_names" {
  description = "Test bucket names"
  value       = module.internal_bucket.internal_bucket_names
}


