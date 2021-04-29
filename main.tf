  provider "aws"{
  profile = "default"
  region  = "eu-west-2"
 }
resource "aws_instance" "MyFirstInstance" {
  ami           = "ami-096cb92bb3580c759"
  instance_type = "t2.micro"
}


