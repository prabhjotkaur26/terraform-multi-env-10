provider "aws" {
  region = "us-west-2"
}
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = {
    Environment = var.env
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
