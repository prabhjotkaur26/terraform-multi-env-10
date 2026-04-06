terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
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
