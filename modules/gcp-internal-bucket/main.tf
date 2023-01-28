
# To apply   - to commit message add => [Apply_Changes]  
# To destroy - to commit message add => [Destroy_All]

resource "google_storage_bucket" "bucket_internal" {
  count    = var.bucket_count
  name     = "internal-${var.bucket_name}-${count.index}"
  location = var.bucket_location
}
