terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key    = "qa/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "s3" {
  source      = "../../modules/s3"
  bucket_name = "prabh-qa-123"
  env         = "qa"
}