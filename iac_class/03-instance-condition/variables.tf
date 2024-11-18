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

variable "ec2_instance_config" {
  type    = map(string)
  default = {}
}

variable "ec2_volume_config" {
  type = object({
    size = number
    type = string
  })
  description = "The size and type of the root block volume of EC2 instance"
  default = {
    size = 10
    type = "gp3"
  }
}

variable "environment" {
  type        = string
  description = "The environment into which the workload will be deployed"
  validation {
    condition     = contains(["devt", "prod", "test"], var.environment)
    error_message = "The environment must either be either 'devt' or 'prod' or 'test'"
  }
}