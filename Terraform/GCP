provider "google" {
  project     = "prime-haven-453221-q7"
  region      = "us-central1"
  zone        = "us-central1-c"
  credentials = file("prime-haven-453221-q7-3cc1d310b3ad.json")
}
# Create a Google Compute Engine instance
resource "google_compute_instance" "my_instance" {
  name         = "my-instance"
  machine_type = "e2-micro"
  zone         = "us-central1-c"
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
}
