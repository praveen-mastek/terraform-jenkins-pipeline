
provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "eu-west-2"
}
resource "aws_instance" "MyFirstInstance" {
   ami = "ami-096cb92bb3580c759"
  instance_type = "t2.micro"
}
