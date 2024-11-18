subnet_settings = {
  snet1 = {
    cidr_block = "10.0.0.0/24"
    name       = "web-subnet"
    tags       = {}
  }
  snet3 = {
    cidr_block = "10.0.2.0/24"
    name       = "db-subnet"
    tags       = {}
  }
  snet2 = {
    cidr_block = "10.0.1.0/24"
    name       = "app-subnet"
    tags = {
      project_id  = "test-cente"
      code_owners = "training@presantech.com"
      contact_id  = "manya.singhal@presantech.com"
    }
  }
}

nic_settings = {
  nic1 = {
    subnet_key = "snet1"
  }
  snet2 = {
    subnet_key = "snet2"
  }
  snet3 = {
    subnet_key = "snet3"
  }
}