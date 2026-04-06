terraform {
  backend "s3" {
    bucket = "terraform-bucket-prabhjot"
    key    = "terraform.tfstate"
    region = "ap-south-1" 
  }
}
