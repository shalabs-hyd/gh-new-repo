resource "aws_vpc" "my_vpc" {
  cidr_block                           = "10.0.0.0/16"
  enable_dns_support                   = false
  enable_network_address_usage_metrics = false
}

resource "aws_subnet" "my_subnet" {
  for_each   = var.subnet_settings
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = each.value["cidr_block"] // lookup(each.value, "cidr_block")
  tags       = each.value["tags"]
}

output "subnet_ids" {
  value = [for i in aws_subnet.my_subnet : i.id]
}

output "subnet_map_ids" {
  value = { for i in aws_subnet.my_subnet : i.cidr_block => i.arn }
}

output "subnet_output" {
  value = aws_subnet.my_subnet
}

resource "aws_network_interface" "name" {
  for_each  = var.nic_settings
  subnet_id = aws_subnet.my_subnet[each.value["subnet_key"]].id

  tags = {
    index = ""
    Name  = "" //0,1,2,3
  }
}
