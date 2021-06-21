provider "google" {
  project = "nasalab-316914"
  region  = "us-central1"
  zone    = "us-central1-a"
}
data "google_compute_instance" "appserver" {
  name = "primary-application-server"
  zone = "us-central1-a"
  machinetype = "f1-micro"
}
 
 boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
network_interface {

network = "default"

}

}
