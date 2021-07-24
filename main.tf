terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.42.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

variable "environment" {
   type = string
   description = "dev or prod"
}

resource "aws_s3_bucket" "b" {
  bucket = "squidsuit-test-${var.environment}"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "${var.environment}"
  }
}