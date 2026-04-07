terraform {
  backend "s3" {
    bucket         = "terraform-bucket-prabhjot"
    key            = "qa/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}
