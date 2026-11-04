resource "aws_instance" "terraform_server" {
  count = 2

  ami                    = "ami-062900c135ab91582"
  instance_type          = "t3.micro"
  key_name               = "Aws-training"
  subnet_id              = "subnet-02c17126b06296c26"
  vpc_security_group_ids = ["sg-06a19a6a6c6390312"]

  associate_public_ip_address = true

  root_block_device {
    volume_size           = 8
    volume_type           = "gp3"
    iops                  = 3000
    encrypted             = false
    delete_on_termination = true
  }

  tags = {
    Name = "terraform-server-${count.index + 1}"
  }
}