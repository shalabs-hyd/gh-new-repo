resource "aws_instance" "shalabs-web-compute-002" {
  ami           = data.aws_ami.amzlinux-2023.id
  instance_type = var.instype
  count         = var.inscount
  key_name      = var.keypair
  #availability_zone = var.aws_az[count.index]
  #availability_zone = element(data.aws_availability_zones.available.names, count.index)
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = merge({ "Name" = "shalabs-web-compute-00${count.index + 1}" }, { "type" = "instance" }, var.tags)

  vpc_security_group_ids = [aws_security_group.shalabs-in-sg-ssh.id, aws_security_group.shalabs-in-sg-http.id]

  user_data = file("config/apache-install.sh")

}