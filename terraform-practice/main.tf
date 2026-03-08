provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami = "ami-02dfbd4ff395f2a1b"
  instance_type = "t3.micro"
  
}

provider "azurerm" {

}

terraform {
  required_providers {
    github = {
        source = "integrations/github"
    }
  }
}

# Configure the GitHub Provider
provider "github" {}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"
}