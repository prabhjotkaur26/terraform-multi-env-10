terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "bucket" {
  bucket = "dev-terraform-2026"
}
