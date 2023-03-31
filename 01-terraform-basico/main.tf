terraform {
  required_version = "0.11.13"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "3.23.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    profile = "tf014"
}

resource "aws_s3_bucket" "my-test-bucket" {

    bucket = "my-teste-1991544111241112241"
    acl = "private"
  
    tags = {
        Name = "My bucketCris"
        Environment = "DEV"
        Managedby = "Terraform"
    }
}