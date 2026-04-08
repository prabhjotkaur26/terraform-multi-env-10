provider "aws" {
  region = var.aws_region
}

module "ec2" {
  source      = "./ec2"
  environment = var.environment
  aws_region  = var.aws_region
}
