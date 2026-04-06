provider "aws" {
  region = "ap-south-1"   # default
}

# Other regions
provider "aws" {
  alias  = "us"
  region = "us-east-1"
}

provider "aws" {
  alias  = "eu"
  region = "eu-west-1"
}

# Bucket in ap-south-1
resource "aws_s3_bucket" "india_bucket" {
  bucket = "my-bucket-india-12345"
}

# Bucket in us-east-1
resource "aws_s3_bucket" "us_bucket" {
  provider = aws.us
  bucket   = "my-bucket-us-12345"
}

# Bucket in eu-west-1
resource "aws_s3_bucket" "eu_bucket" {
  provider = aws.eu
  bucket   = "my-bucket-eu-12345"
}
