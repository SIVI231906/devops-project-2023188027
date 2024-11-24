terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = var.Srikanth
}

resource "github_repository" "Devops project 2023188027" {
  name        = "Devops project 2023188027"
  visibility  = "public"
}
