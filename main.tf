provider "aws" {
  region = "eu-west-2" 
}
resource "aws_s3_bucket" "terraformBucketTest" {
  bucket = "terraform-bucket-test-1234567890"
}