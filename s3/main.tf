provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "hemanth_bucket" {
  bucket = "hemanth-demo-bucket-9550172021"

  tags = {
    Name = "hemanth-infra-bucket"
  }
}