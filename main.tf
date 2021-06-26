provider "google" {
 
  project = "nasalab"
  credentials = file("./creds/creds.json")
  region  = "us-central1"

  
}

resource "google_compute_instance" "vm-instance" {
  name         = "test"
  machine_type = "f1-micro"
  zone    = "us-central1-a"


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
