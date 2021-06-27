terraform {
  backend "gcs" {
    bucket = "nasalab-bucket"
    prefix  = "terraform/state"
    credentials = "./creds/creds.json"
  }
}
