aws_region = "ap-south-1"
profile    = "dop-lab"

tags = {
  product   = "labs"
  terraform = "true"
  project   = "shalabs-in"
  tier      = "frontend"
}


aws_az = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]


ec2_instance_config = {
  prod_instance_type = "t3.large"
  devt_instance_type = "t3.micro"
  test_instance_type = "t3.small"
  instance_keypair   = "shalabs-key-001"
  instance_count     = 3
}

ec2_volume_config = {
  size = 10
  type = "gp3"
}






