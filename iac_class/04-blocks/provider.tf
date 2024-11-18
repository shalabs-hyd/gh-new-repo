terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.75.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }

  }
  backend "s3" {}
}

provider "aws" {
  region  = var.aws_region
  profile = var.profile
}

provider "aws" {
  alias   = "aws_labs"
  region  = var.aws_region_lab
  profile = var.profile
}