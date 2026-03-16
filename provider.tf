terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# other credentials are stored local
provider "aws" {
  region = var.region
}