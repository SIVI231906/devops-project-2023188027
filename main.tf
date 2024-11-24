terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = Srikanth
}

resource "github_repository" "example" {
  name        = "Devops project 2023188027"
  visibility  = "public"
}
