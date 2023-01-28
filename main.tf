
# To apply   - to commit message add => [Apply_Changes]  
# To destroy - to commit message add => [Destroy_All]   

# resource "google_storage_bucket" "bucket_test" {
#   name     = "test-bucket-random-260185-23"
#   location = var.region
# }


resource "random_string" "rnd_str_6" {
  length  = 6
  special = false
}

module "internal_bucket" {
  source = "./modules/gcp-internal-bucket"
  # required input param
  # this will create only one test bucket
  bucket_name = "test-bucket-random-260185-23"
  # this will create a new test bucket on every apply
  # bucket_name = lower("test-pr-nr-${var.project_nr}-rnd-${random_string.rnd_str_6.result}-time-${formatdate("YYYYMMDDhhmmss", timestamp())}")
  bucket_location = var.region
}

