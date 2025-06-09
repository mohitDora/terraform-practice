terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }
#  for remote backend
#   backend "s3" {
#     bucket = "my-remote-bucket"
#     key    = "terraform.tfstate"
#     region = "ap-south-1"
#     dynamodb_table = "my-table"
#   }
}