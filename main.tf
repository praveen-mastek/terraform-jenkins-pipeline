terraform {
  # This module is now only being tested with Terraform 0.14.x. However, to make upgrading easier, we are setting
  # 0.12.26 as the minimum version, as that version added support for required_providers with source URLs, making it
  # forwards compatible with 0.14.x code.
  required_version = ">= 0.14.10"
}

# Configure the AWS Provider
provider "aws" {
  profile = "default"
  region = "eu-west-2"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  # AMI ID for Amazon Linux AMI 2018.03.0 (HVM)
  ami           = "ami-096cb92bb3580c759"
  instance_type = "t2.micro"

  tags = {
    Name = "example"
  }
}