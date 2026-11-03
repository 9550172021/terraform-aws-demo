resource "aws_s3_bucket" "file_storage" {
  bucket = "s3-demo-9550172021"

  tags = {
    Name        = "hemanth-s3-demo-9550172021"
    Environment = "dev"
  }
}
