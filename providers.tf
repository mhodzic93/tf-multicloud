provider "aws" {}

provider "google" {}

terraform {
  required_version = "1.1.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.8.0"
    }
    google = {
      source = "hashicorp/google"
      version = "4.16.0"
    }
  }
}
