terraform {
  backend "gcs" {
    bucket = "memod-cdn-iaac"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = var.project_id
  region  = local.location
}