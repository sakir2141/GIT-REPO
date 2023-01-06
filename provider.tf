
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAR2VHO27VS65ZQGN5"
  secret_key = "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"
}

resource "aws_instance" "s1" {
  ami           = "ami-0cca134ec43cf708f"
  instance_type = "t2.micro"

  tags = {
    Name = "DEVELOPER"
  }
}
