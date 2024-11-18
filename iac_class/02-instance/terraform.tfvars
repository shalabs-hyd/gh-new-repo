ec2_instance_config = {
  instance_type    = "t3.micro"
  instance_keypair = "shalabs-key-001"
  instance_count   = 1
}

ec2_volume_config = {
  size = 10
  type = "gp3"
}

tags = {
  environment = "sandbox"
  product     = "labs"
  terraform   = "true"
  project     = "shalabs-in"
  tier        = "frontend"
}

aws_region = "ap-south-1"
profile    = "dop-lab"


aws_az = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]