terraform {
  backend "s3" {
    bucket = "qa-backend-buckett "
    key    = "qa/terraform.tfstate"
    region = "us-east-1"
  }
}
