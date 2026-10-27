terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_instance" "demo" {
  ami           = "ami-04b938437b69a2c9c"
  instance_type = "t3.micro"

  tags = {
    Name = "Jenkins-Terraform-Demo"
  }

  user_data = <<-EOF
              #!/bin/bash
              dnf install httpd -y
              systemctl enable httpd
              systemctl start httpd
              echo "<h1>Created by Jenkins + Terraform</h1>" > /var/www/html/index.html
              EOF
}

output "public_ip" {
  value = aws_instance.demo.public_ip
}