provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

terraform {
  backend "gcs" {
    bucket = "sandbox-marek-260185-tfstate"
    prefix = "terraform/state"
  }
}
