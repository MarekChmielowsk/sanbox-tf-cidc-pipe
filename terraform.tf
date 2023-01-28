terraform {
  required_version = "~> 0.12.29"
  backend "gcs" {
    # manually created pernament bucket to save terraform state
    bucket = "sandbox-marek-1-pr-456108963769-tfstate"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
    random = {
      version = ">= 2.1.2"
    }
  }
}
