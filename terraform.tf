terraform {
  required_version = ">= 1.3.0"
  backend "gcs" {
    # manually created pernament bucket to save terraform state
    bucket = "sandbox-marek-1-pr-456108963769-tfstate"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">=3.5.0"
    }
    random = {
      version = ">= 2.1.2"
    }
  }
}
