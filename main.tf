resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
provider "aws" {
  region = "your-region"
}

module "s3" {
  source = "./s3"

  providers = {
    aws = aws
  }
}
