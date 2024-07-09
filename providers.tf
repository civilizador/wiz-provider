terraform {
  required_version = ">= 0.14.0"  # Specify the required Terraform version

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.50.0"  # Specify the version constraint for the Google provider
    }
    wiz = {
      source = "hashicorp/wiz"
      version = ">=1.0.0"
    }
  }
}

provider "google" {
  credentials = file(var.gcp_sa)
  project     = var.project_id
  region      = var.gke_region
}

provider "wiz" {
  alias                  = "default"
  wiz_url                = var.wiz_url
  wiz_auth_client_id     = var.wiz_auth_client_id
  wiz_auth_client_secret = var.wiz_auth_client_secret
  wiz_auth_audience      = "wiz-api"
}
