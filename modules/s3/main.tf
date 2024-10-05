resource "aws_s3_bucket" "my_bucket" {
  bucket = "${var.bucket_name}"

  tags = {
    Name        = var.bucket_name
    Environment = var.env
  }
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

