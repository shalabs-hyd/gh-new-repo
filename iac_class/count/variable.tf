# variable "vpc_settings" {
#   type = object({
#     cidr_block = string
#     enable_dns_support = bool
#     enable_network_address_usage_metrics = bool
#     tags = map(string)
#   })
#   description = ""
# }

# variable "subnet_settings" {
#   type = object({
#     cidr_block = string
#     enable_availability_zone = bool
#   })
#   description = ""
# }


variable "instance_amis" {
  type = list(string)
}

variable "instance_types" {
  type = list(string)
}

variable "enable_s3bucket" {
  type = bool
  default = false
}