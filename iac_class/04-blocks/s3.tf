resource "random_id" "s3_name_suffix" {
  byte_length = 3
}

resource "aws_s3_bucket" "sha_lab_bucket" {
  bucket        = "shalabs-cnr-${random_id.s3_name_suffix.hex}-${data.aws_caller_identity.current.account_id}-${data.aws_region.current.name}"
  force_destroy = true
  tags          = merge({ "Name" = "shalabs-cnr-${random_id.s3_name_suffix.hex}-${var.aws_region_lab}"}, var.tags)
}

resource "aws_s3_bucket_versioning" "sha_lab_bucket_versioning" {
  #provider = aws.aws_labs
  bucket = aws_s3_bucket.sha_lab_bucket.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket_policy" "shalabs_policy" {
  bucket = aws_s3_bucket.sha_lab_bucket.id
  policy = data.aws_iam_policy_document.enforce-ssl.json

}