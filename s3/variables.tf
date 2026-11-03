variable "aws_region" {
  description = "AWS Region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "aws-file-storage"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}