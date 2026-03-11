provider "aws" {
  region = "us-east-1"
}

# resource "aws_instance" "myec2" {
#   ami = "ami-02dfbd4ff395f2a1b"
#   instance_type = "t3.micro"
  
# }

resource "aws_security_group" "demo-security" {
  name = "demo-security"
  description = "terraform through"
}

