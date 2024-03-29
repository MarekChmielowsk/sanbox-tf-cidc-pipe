terraform {
  required_version = ">= 1.3.0"
  backend "gcs" {
    # manually created pernament bucket to save terraform state
    bucket = "sandbox-marek-1-pr-948172034115-tfstate"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=4.5.0"
    }
    random = {
      version = ">=3.4.3"
    }
  }
}
