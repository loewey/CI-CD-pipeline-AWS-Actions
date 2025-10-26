provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "current_bucket" {
  bucket = "tester-devsecops-bucket"
}
terraform {
  backend "s3" {
    bucket         = "tester-devsecops-bucket"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}