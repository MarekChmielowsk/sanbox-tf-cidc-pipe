provider "google" {
  #"my-project-id"   #"{{YOUR GCP PROJECT}}"
  project = "marek-sandbox-1"
  region  = "us-central1"
  zone    = "us-central1-c"
}

# To apply   - to commit message add => [Apply_Changes]  
# To destroy - to commit message add => [Destroy_All] 

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = google_compute_network.vpc_network.self_link
    access_config {
    }
  }
}
