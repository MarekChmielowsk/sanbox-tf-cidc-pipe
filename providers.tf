provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

terraform {
  backend "gcs" {
    bucket = var.project_id+"-pr-456108963769-tfstate"
    prefix = "terraform/state"
  }
}
