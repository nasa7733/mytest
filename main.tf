provider "google" {
  project = "nasalab-316914"
  credentials = file('./creds/creds.json')
  region  = "us-central1"
  zone    = "us-central1-a"
}
data "google_compute_instance" "vm-instance" {
  name = "test-vm"
  zone = "us-central1-a"
}
