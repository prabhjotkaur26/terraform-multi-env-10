terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key    = "qa/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "bucket" {
  bucket = "qa-terraform-2026"
}
