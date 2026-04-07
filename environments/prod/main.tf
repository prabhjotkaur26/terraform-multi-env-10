terraform {
  backend "s3" {
    bucket = "prod-backend-buckett"
    key    = "prod/terraform.tfstate"
    region = "eu-west-1"
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "bucket" {
  bucket = "prod-terraform-2026"
}
