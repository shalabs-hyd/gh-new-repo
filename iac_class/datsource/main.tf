data "aws_subnet" "default" {
    id = "subnet-09c0293171b7e71d4"
}

resource "aws_network_interface" "nic" {
  count = length(var.instance_types)
  subnet_id   = data.aws_subnet.default.id

  tags = {
    index = count.index+1
    Name = "primary_network_interface-${count.index+1}" //0,1,2,3
  }
}


resource "aws_instance" "foo" { //0, 1
  count = length(var.instance_types)
  ami           = element(var.instance_amis, count.index)
  instance_type = element(var.instance_types, count.index)

  network_interface {
    network_interface_id = aws_network_interface.nic[count.index].id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}

resource "aws_s3_bucket" "name" {
  bucket = "testbucket"  
}

output "nic_ids" {
  value = aws_network_interface.nic.*.id
}

output "nic_id" {
  value = aws_network_interface.nic[0].id
}

variable "instance_amis" {
  type = list(string)
}

variable "instance_types" {
  type = list(string)
}

provider "aws" {
  region = "eu-north-1"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.73.0"
    }
  }
}