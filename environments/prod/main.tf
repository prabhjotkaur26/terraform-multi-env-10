terraform {
  backend "s3" {
    bucket = "terraform-bucket-prabhjot"
    key    = "prod/terraform.tfstate"
    region = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1"
}

module "s3" {
  source      = "../../modules/s3"
  bucket_name = "prabh-prod-123"
  env         = "prod"
}