terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.28.0"
    }
  }
}

provider "google" {
  project = "alpine-guild-420600"
  region  = "us-centra1"
}
