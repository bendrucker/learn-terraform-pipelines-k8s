terraform {
  backend "remote" {
    organization = "infrastructure-pipelines-workshop"

    workspaces {
      name = "ben-d-k8s"
    } 
  } 
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.region
}
