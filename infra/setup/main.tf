terraform {
  required_version = "~> 1.11.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  profile = var.tf-profile
  region  = var.region
  default_tags {
    tags = {
      app = var.app_name
    }
  }
}

resource "aws_ecr_repository" "this" {
  name = var.app_name
}
