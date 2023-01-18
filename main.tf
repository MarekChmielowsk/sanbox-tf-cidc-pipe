provider "google" {
  #"my-project-id"   #"{{YOUR GCP PROJECT}}"
  project = "marek-sandbox-1"
  region  = "us-central1"
  zone    = "us-central1-c"
}

# To apply   - to commit message add => [Apply_Changes]  
# To destroy - to commit message add => [Destroy_All] 

resource "google_storage_bucket" "gcs_bucket" {
  name = "test-bucket-random-001123"
}
