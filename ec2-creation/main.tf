resource "aws_instance" "test_server" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "TerraformDemoServer-${count.index}"
  }
}
