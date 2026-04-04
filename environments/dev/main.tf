terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key    = "dev/terraform.tfstate"
    region = "us-west-2"
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
