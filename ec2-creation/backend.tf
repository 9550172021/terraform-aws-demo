terraform {
  backend "s3" {
    bucket         = "hemanth-terraform-state-20260802"
    key            = "terraform-aws-demo-ec2-creation.tf"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"   # optional, for state locking
    encrypt        = true
  }
}
