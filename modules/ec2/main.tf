provider "aws" {
  region = var.aws_region
}

# EC2 Module
module "ec2" {
  source      = "../../modules/ec2"
  environment = var.environment
  aws_region  = var.aws_region
}
