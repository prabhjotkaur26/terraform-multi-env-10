resource "aws_s3_bucket" "backend_india" {
  bucket   = "tf-backend-india-123"
  provider = aws.india
}

resource "aws_s3_bucket" "backend_us" {
  bucket   = "tf-backend-us-123"
  provider = aws.us
}

resource "aws_s3_bucket" "backend_europe" {
  bucket   = "tf-backend-europe-123"
  provider = aws.europe
}
