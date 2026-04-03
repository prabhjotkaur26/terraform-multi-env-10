terraform {
  backend "s3" {
    bucket = "terraform-bucket-prabhjot"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}

module "s3" {
  source      = "../../modules/s3"
  bucket_name = "prabh-dev-123"
  env         = "dev"
}