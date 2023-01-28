# To apply   - just merge/push to main 
# To destroy - to merge/push to main with commit message contains => [Destroy_All] 

resource "google_storage_bucket" "bucket_internal" {
  count    = var.bucket_count
  name     = "internal-${var.bucket_name}-${count.index}"
  location = var.bucket_location
}
