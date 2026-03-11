provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami = "ami-02dfbd4ff395f2a1b"
  instance_type = "t3.micro"

  vpc_security_group_ids = [aws_security_group.demo-security.id]
  
}

resource "aws_security_group" "demo-security" {
  name = "demo-security"
  description = "terraform through"
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.demo-security.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.demo-security.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" 
}


resource "aws_eip" "my-eip" {
  domain = "vpc"
  tags = {
    Name = "demo-eip"
  }
}

resource "aws_eip_association" "association" {
  instance_id = aws_instance.myec2.id
  allocation_id = aws_eip.my-eip
}
