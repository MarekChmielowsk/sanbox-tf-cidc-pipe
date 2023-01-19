provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

terraform {
  backend "gcs" {
    bucket = "sandbox-marek-1-pr-456108963769-tfstate"
    prefix = "terraform/state"
  }
}
