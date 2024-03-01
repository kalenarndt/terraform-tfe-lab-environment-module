terraform {
  required_version = ">=1.6.6"
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = ">=0.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">=3.5.0"
    }
  }
}