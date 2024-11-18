instype    = "t2.micro"
keypair    = "shalabs-key-001"
inscount   = 1
aws_region = "ap-south-1"
profile    = "dop-lab"

tags = {
  environment = "sandbox"
  product     = "labs"
  terraform   = "true"
  project     = "shalabs-in"
  tier        = "frontend"
}

tf_state_bucket = "shalabs-state-config"
tf_state_table  = "dynamodb-state-locking"

s3_key = "sha/terraform.tfstate"



aws_az = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]

