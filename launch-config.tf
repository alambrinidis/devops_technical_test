resource "aws_launch_configuration" "web" {
  name_prefix = "web-"

  image_id      = "ami-0c3e74fa87d2a4227" # Amazon Linux AMI 2018.03.0 (HVM)
  instance_type = "t2.micro"
  key_name      = "technical_test"

  security_groups             = ["${aws_security_group.allow_http.id}"]
  associate_public_ip_address = true

  user_data = <<USER_DATA

#!/bin/bash
yum update
yum -y install nginx
echo "$(curl http://169.254.169.254/latest/meta-data/local-ipv4)" > /usr/share/nginx/html/index.html
chkconfig nginx on
service nginx start
  USER_DATA

  lifecycle {
    create_before_destroy = true
  }
}