provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-ec2" {
  ami = "ami-01b14b7ad41e17ba4"
  instance_type = terraform.workspace == "prod" ? "t3.small" : "t3.micro"
  tags = {
    Name = "${terraform.workspace}-myec2"
  }
}


