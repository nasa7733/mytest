provider "google" {
  credentials = file ("./creds/creds.json")
  project = "nasalab"
  region = "us-central1"
}
resource "google_compute_instance" "vm-instance" {
  name = "test=vm"
  zone = "us-central1-a"
  machinetype = "f1-micro"

network_interface {

name = "default"

}

)
