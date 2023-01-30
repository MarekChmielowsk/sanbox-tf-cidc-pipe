output "internal_bucket_names" {
  description = "internal buckets names"
  value       = google_storage_bucket.bucket_internal[*].name
}

output "internal_bucket_0_location" {
  description = "internal bucket[0] location"
  value       = google_storage_bucket.bucket_internal[0].location
}
