terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.15"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}