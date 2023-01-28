output "internal_bucket_name_location" {
  description = "internal bucket name + locatioon"
  value = "${bucket_internal.name} at ${bucket_internal.location}"
}
