output "instance_publicip" {
    description = "Public IP address of Instances"
    value = {for i in aws_instance.shalabs-web-compute : i.id => i.public_ip }
}

output "instance_pubdns" {
    value = {for c, instance in aws_instance.shalabs-web-compute: c => instance.public_dns}
}
