output "ec2_instance_publicip" {
  description = "Public IP Address of the EC2 instance"
  value       = aws_instance.shalabs-web-compute-002.*.public_ip
}

output "ec2_instance_privateip" {
  description = "Private IP Address of EC2 instance"
  value       = aws_instance.shalabs-web-compute-002.*.private_ip
}

output "ec2_instance_security_groups" {
  description = "List of SG's applied to the EC2 instance"
  value       = aws_instance.shalabs-web-compute-002.*.security_groups
}

output "ec2_instance_publicdns" {
  description = "Public DNS URL of the EC2 instance"
  value = [
    for instance in aws_instance.shalabs-web-compute-002 :
    "http://${instance.public_dns}"
  ]
}

# output "pool_id" {

#   value = data.aws_vpc_ipam_pool.test.id

# }

output "state_bucket" {

  value = data.aws_s3_bucket.state-bucket.bucket_domain_name

}