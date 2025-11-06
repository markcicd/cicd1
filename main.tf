variable "gcp_project" {}

provider "google" {
  project = var.gcp_project 
  region  = "us-west1"
}

terraform {
  backend "gcs" {
    bucket  = "tf-remote-state-student_04_65a21aa7a648-16993-14394"
    prefix  = "terraform/state/lab01" 
  }
}

resource "google_compute_network" "example_vpc" {
  name                    = "markvpc2"
  auto_create_subnetworks = true 
}
