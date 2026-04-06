provider "aws" {
  alias  = "india"
  region = "ap-south-1"
}

provider "aws" {
  alias  = "us"
  region = "us-east-1"
}

provider "aws" {
  alias  = "europe"
  region = "eu-west-1"
}