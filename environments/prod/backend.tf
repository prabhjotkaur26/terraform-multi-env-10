terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-sachin"
    key            = "prod/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}
