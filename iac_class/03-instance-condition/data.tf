data "http" "shalabs-home" {
  url = "https://ipecho.net/plain"
}


data "aws_ami" "amzlinux-2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

data "aws_region" "current" {}

data "aws_availability_zones" "available" {}


data "aws_s3_bucket" "state-bucket" {
  bucket = "shalabs-state-config"
}