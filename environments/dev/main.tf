terraform {
  backend "s3" {
    bucket = "dev-backend-buckett "
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
