provider "google" {
  project = "nasalab-316914"
  credentials = file("./creds/creds.json")
  region  = "us-central1"

  
}

resource "google_compute_instance" "default" {
  name    = "test-vm-central1-c"
  machine_type = "f1-micro"
  zone    = "us-central1-c"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
    
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}
