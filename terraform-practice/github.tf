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