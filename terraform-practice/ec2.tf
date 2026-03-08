provider "aws" {
  region = "us-east-1"
  shared_credentials_files = "~/.aws/credentials"
}

resource "aws_instance" "myec2" {
  ami = "ami-02dfbd4ff395f2a1b"
  instance_type = "t3.micro"
  
}

