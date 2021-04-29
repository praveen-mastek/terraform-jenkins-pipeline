resource "aws_instance" "MyFirstInstance" {
  ami           = "ami-096cb92bb3580c759"
  instance_type = "t2.micro"
}
