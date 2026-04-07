provider "aws" {
  region = var.aws_region
}
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
module "s3" {
  source = "./modules/s3"

  aws_region = var.aws_region
  env        = var.environment
}
