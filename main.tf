
# To apply   - just merge/push to main  
# To destroy - to merge/push to main with commit message contains => [Destroy_All]   

# test update 5th Sep 2023 12:25 CET   


# resource "google_storage_bucket" "bucket_test" {
#   name     = "test-bucket-random-260185-23"
#   location = var.region
# }

data "google_compute_zones" "available_zones" {
}

resource "random_string" "rnd_str_6" {
  length  = 7
  special = false
}

module "internal_bucket" {
  source = "./modules/gcp-internal-bucket"
  # required input param
  # this will create one or more test bucket on first run and re-create bucket(s) with the same name(s) on subsequent runs terraform apply
  bucket_name = "test-bucket-fixed-260185"
  # this will create a new test bucket(s) on every terraform apply
  # bucket_name = lower("test-pr-nr-${var.project_nr}-rnd-${random_string.rnd_str_6.result}-time-${formatdate("YYYYMMDDhhmmss", timestamp())}")
  bucket_location = var.region # Or hardcode region
  # optional
  bucket_count = 3
}

