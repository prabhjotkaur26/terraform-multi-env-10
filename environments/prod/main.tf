terraform {
  backend "s3" {
    bucket = "prod-backend-buckett"
    key    = "prod/terraform.tfstate"
    region = "eu-west-1"
  }
}
