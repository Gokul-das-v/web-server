resource "aws_instance" "ec2-instance" {
  ami           = var.ami
  instance_type = var.instance_type
  availability_zone = "us-east-1a"

network_interface {
    device_index = 0
  network_interface_id = aws_network_interface.nic.id
}

user_data = <<-EOF
            #!/bin/bash
            sudo yum update -y
            sudo yum install httpd -y
            sudo systemctl start httpd
            sudo echo"this is my first file" >> /var/www/html/index.html 
            EOF

  tags = {
    Name = "web server"
  }
}