provider "google" {
  project = "nasalab-316914"
  region  = "us-central1"
  zone    = "us-central1-a"
}
data "google_compute_instance" "vm-instance" {
  name = "primary-application-server"
  zone = "us-central1-a"
}
