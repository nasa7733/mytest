provider "google" {
credentials = file ("./creds/creds.json")
project = "nasalab"
region = "us-central1"

}

resource "google_compute_Instance" "vm-instance" {

name = "test=vm"
zone = "us-central1-a"
Machine = "f1-micro"

network-interface {

name = "default"

}

)
