
# To apply   - to commit message add => [Apply_Changes]  
# To destroy - to commit message add => [Destroy_All]

resource "google_storage_bucket" "bucket_internal" {
  name     = var.bucket_name  # "test-bucket-random-260185-23"
  location = var.region
}
