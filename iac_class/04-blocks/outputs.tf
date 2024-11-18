output "random_id" {
    value = random_id.s3_name_suffix
}

output "s3_bucket_name" {
    value = aws_s3_bucket.sha_lab_bucket.bucket 
}

output "s3_dnsName" {
    value = aws_s3_bucket.sha_lab_bucket.bucket_domain_name
}