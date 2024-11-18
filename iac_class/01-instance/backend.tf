/* backend "s3" {
    bucket  = "terraform-shalabs-in-dev"
    key     = "teststate/terraform.tfstate"
    region  = "ap-south-1"
    profile = "dop-lab"
    #For State Locking
    dynamodb_table = "dynamodb-state-locking"
  } */

data "terraform_remote_state" "state" {

  backend = "s3"

  config = {
    bucket         = var.tf_state_bucket
    dynamodb_table = var.tf_state_table
    region         = var.aws_region
    key            = var.s3_key
    profile        = var.profile
  }

}