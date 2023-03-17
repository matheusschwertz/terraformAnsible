terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0d50e5e845c552faf"
  instance_type = "t2.micro"
  key_name = "iac-alura"
  tags = {
    Name = "Terraform Ansible"
  }
}
