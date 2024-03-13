terraform {
  backend "gcs" {
    bucket      = "${var.BUCKET_NAME}"
    prefix      = "terraform/state"
    credentials = "credentials_file.json"
  }
}
