provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample-instance-terraform" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}

resource "aws_eip_association" "eip_association" {
  instance_id = aws_instance.sample-instance-terraform.id
  allocation_id = aws_eip.lb.id
}