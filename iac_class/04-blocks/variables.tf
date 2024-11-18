variable "aws_region" {
  type        = string
  description = "Default region in which AWS resources will be created"
}

variable "profile" {
  description = "Default AWS profile to be used to create resources"
  type        = string
}

variable "tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
  default     = {}
}

variable "aws_region_lab" {
  type        = string
  description = "Default region  Lab region"

}