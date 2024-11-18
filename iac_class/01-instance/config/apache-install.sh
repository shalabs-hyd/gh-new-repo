#! /bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    INSID=$(TOKEN=`curl -s -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 300"` && curl -s -H "X-aws-ec2-metadata-token: $TOKEN"  http://169.254.169.254/latest/meta-data/instance-id/)
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>Welcome to SHALABS ! AWS Infra created using Terraform in ap-south-1 Region on instance $INSID  </h1>" > /var/www/html/index.html