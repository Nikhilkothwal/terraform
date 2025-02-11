terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "nks-remote-state"
    key = "aws-module-test"
    region = "us-east-1"
    dynamodb_table = "nks-state-locking"
  }

}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}