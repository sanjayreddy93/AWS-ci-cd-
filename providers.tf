terraform {
  backend "s3" {
    bucket = "tfstate-backend-2044"
    key    = "state_files/terraform.tfstate"
    region = "eu-central-1"
  }
  required_providers {
    aws = {
      version = "5.33.0"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}