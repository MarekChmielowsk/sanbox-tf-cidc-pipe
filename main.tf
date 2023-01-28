
# To apply   - to commit message add => [Apply_Changes]  
# To destroy - to commit message add => [Destroy_All] 

# resource "google_storage_bucket" "bucket_test" {
#   name     = "test-bucket-random-260185-23"
#   location = var.region
# }

module "internal_bucket" {
  source = "./modules/gcp-internal-bucket"
  # required input param
  bucket_name = "test-bucket-random-260185-23"
  bucket_location = var.region
}

