terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-sachin"
    key            = "qa/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}
