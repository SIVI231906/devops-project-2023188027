terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = var.github_token
}

resource "github_repository" "example" {
  name        = "example-repo"
  description = "A Terraform-managed repository"
  visibility  = "public"
}
