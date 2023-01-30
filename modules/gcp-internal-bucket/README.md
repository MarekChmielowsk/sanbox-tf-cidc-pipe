Example module for creating buckets

Usage example:

module "internal_bucket" {

  source = "./modules/gcp-internal-bucket"
  
  % required input param
  
  bucket_name = "test-bucket-fixed-260185"
  
  % this will create a new test bucket(s) on every terraform apply
  
  % bucket_name = lower("test-pr-nr-${var.project_nr}-rnd-${random_string.rnd_str_6.result}-time-${formatdate("YYYYMMDDhhmmss", timestamp())}")
  
  bucket_location = var.region  # Or hardcode region
  
  % optional
  
  bucket_count = 
  
}
Replace % with hash (hash is change fonts to bold in README.md

If bucket_count is not defined only single bucket willl be created

