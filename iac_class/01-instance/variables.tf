variable "instype" {
  type        = string
  description = "Instance type of the EC2 instance"
}

variable "keypair" {
  type        = string
  description = "SSH keypair used to login to ec2 instance"
}

variable "inscount" {
  type        = number
  description = "Number of EC2 instances to be launched"
}

variable "aws_region" {
  type        = string
  description = "Default region in which AWS resources will be created"
}

variable "profile" {
  description = "Default AWS profile to be used to create resources"
  type        = string
}

variable "tags" {
  description = "Tags to set on the instance"
  type        = map(string)
  default     = {}
}

variable "aws_az" {
  description = "AWS availability Zones to be used"
  type        = list(string)
  default     = []

}

variable "tf_state_bucket" {
  type = string

}

variable "tf_state_table" {}

variable "s3_key" {

}

/* variable "security_groups" {
  type = list(string)
} */