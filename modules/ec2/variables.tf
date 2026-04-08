variable "environment" {}
variable "aws_region" {}

variable "ami_map" {
  type = map(string)
  default = {
    ap-south-1 = "ami-0f58b397bc5c1f2e8"
    us-east-1  = "ami-0c02fb55956c7d316"
    eu-west-1  = "ami-0dad359ff462124ca"
  }
}
