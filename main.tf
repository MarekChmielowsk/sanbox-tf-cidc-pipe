provider "google" {
  #"my-project-id"   #"{{YOUR GCP PROJECT}}"
  project = "marek-sandbox-1"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket" "gcs_bucket" {
  name = "test-bucket-random-001123"
}
