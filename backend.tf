terraform {
  backend "s3" {
    bucket = "mathesh-bucket-1947"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}