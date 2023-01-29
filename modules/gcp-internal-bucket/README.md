Example module for creating buckets
Usage example:
module "internal_bucket" {
  source = "./modules/gcp-internal-bucket"
  # required input param
  # this will create one or more test bucket on first run and re-create bucket(s) with the same name(s) on subsequent runs terraform apply
  bucket_name = "test-bucket-fixed-260185"
  # this will create a new test bucket(s) on every terraform apply
  # bucket_name = lower("test-pr-nr-${var.project_nr}-rnd-${random_string.rnd_str_6.result}-time-${formatdate("YYYYMMDDhhmmss", timestamp())}")
  bucket_location = var.region  # Or hardcode region
  # optional
  bucket_count = 3
}
If bucket_count is not defined only single bucket willl be created
