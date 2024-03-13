terraform {
  backend "gcs" {
    prefix      = "terraform/state"
    credentials = "credentials_file.json"
  }
}
