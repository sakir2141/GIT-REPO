
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "var.region"
  access_key = "var.access_key"
  secret_key = "var.secret_key"
}

resource "aws_instance" "s1" {
  ami           = "ami-0cca134ec43cf708f"
  instance_type = "t2.micro"

  tags = {
    Name = "Jenkins_Terraform"
  }
}
