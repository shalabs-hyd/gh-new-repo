
resource "aws_instance" "shalabs-web-compute" {
  ami           = data.aws_ami.amzlinux-2023.id
  instance_type = var.environment == "prod" ? "${var.ec2_instance_config.prod_instance_type}" : var.environment == "devt" ? "${var.ec2_instance_config.devt_instance_type}" : "${var.ec2_instance_config.test_instance_type}"
  count         = var.ec2_instance_config.instance_count
  key_name      = var.ec2_instance_config.instance_keypair
  root_block_device {
    volume_size = var.ec2_volume_config.size
    volume_type = var.ec2_volume_config.type
    delete_on_termination = true

  }

  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = merge({ "Name" = "shalabs-web-compute-${var.environment}-00${count.index + 1}" }, { "type" = "instance" }, { "Managed-By" = "terraform" }, { "environment" = "${var.environment}" }, var.tags)

  vpc_security_group_ids = [aws_security_group.shalabs-in-sg-ssh.id, aws_security_group.shalabs-in-sg-http.id]

  user_data = file("config/apache-install.sh")

}