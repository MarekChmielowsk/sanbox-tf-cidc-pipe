output "internal_bucket_name_location" {
  description = "internal bucket name + locatioon"
  # value = "${google_storage_bucket.bucket_internal.name} at ${google_storage_bucket.bucket_internal.location}"
  value = [for bucket_internal in google_storage_bucket.bucket_internal : "${google_storage_bucket.bucket_internal.name} at ${google_storage_bucket.bucket_internal.location} | "]
}
