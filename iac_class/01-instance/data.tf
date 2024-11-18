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


# data "aws_vpc_ipam_pool" "test" {
#   /* filter {
#     name   = "Name"
#     values = ["ipam-pool-01"]
#   }*/

#   filter {
#     name   = "address-family"
#     values = ["ipv4"]
#   }
# }

/* data "aws_security_group" "aws_sgs" {
  count    = length(var.security_groups)
  id       = var.security_groups[count.index]
} */


data "aws_s3_bucket" "state-bucket" {
  bucket = "shalabs-state-config"
}