resource "aws_instance" "example" {
  ami           = var.ami_map[var.aws_region]
  instance_type = "t3.micro"

  tags = {
    Name        = "${var.environment}-ec2"
    Environment = var.environment
  }
}
