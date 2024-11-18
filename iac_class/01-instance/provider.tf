terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    # bucket         = "${var.tf_state_bucket}"
    # key            = "${var.s3_key}"
    # region         = "${var.aws_region}"
    # dynamodb_table = "${var.tf_state_table}"
  }

}

provider "aws" {
  region  = var.aws_region
  profile = var.profile

}