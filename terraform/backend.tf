terraform {
  backend "gcs" {
    bucket      = "$BUCKET_NAME" # Replace with your bucket name.
    prefix      = "terraform/state"
    credentials = "credentials_file.json"
  }
}
