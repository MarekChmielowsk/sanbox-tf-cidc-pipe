provider "google" {
  #"my-project-id"   #"{{YOUR GCP PROJECT}}"
  project = "marek-sandbox-1"
  region  = "us-central1"
  zone    = "us-central1-c"
}

# Create a single Compute Engine instance - pipeline test
resource "google_compute_instance" "default" {
  name         = "test-vm"
  machine_type = "f1-micro"
  zone         = "us-central1-a"
  tags         = ["ssh"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
}
