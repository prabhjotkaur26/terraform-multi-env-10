provider "aws" {
  region = "ap-south-1"
}
terraform {
  backend "s3" {
    bucket = "terraform-bucket-prabhjot "  
    key    = "terraform.tfstate"   
    region = "ap-south-1"           
  }
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
