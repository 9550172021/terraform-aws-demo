terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "demo" {
  ami           = "ami-03f0544597f43a91d"
  instance_type = "t2.micro"

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