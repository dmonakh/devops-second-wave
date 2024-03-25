terraform {
  backend "gcs" {
    bucket      = "tf-state-nonprod1" # Replace with your bucket name.
    prefix      = "terraform/state"
    credentials = "credentials_file.json"
  }
}
