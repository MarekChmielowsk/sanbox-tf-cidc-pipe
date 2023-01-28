output "internal_bucket_names" {
  description = "internal buckets names"
  value = google_storage_bucket.bucket_internal[*].name
}

output "internal_bucket_locations" {
  description = "internal buckets locations"
  value = google_storage_bucket.bucket_internal[*].location
}
