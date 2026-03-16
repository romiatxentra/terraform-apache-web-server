resource "aws_instance" "web_server" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [
    aws_security_group.web_server_sg.id
  ]

  user_data = <<-EOF
              #!/bin/bash
              apt update
              apt install apache2 -y
              systemctl start apache2
              echo "Your web server" > /var/www/html/index.html
              EOF

  tags = {
    Name = "web-server"
  }
}