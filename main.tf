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

resource "github_repository" "devops_project_2023188027" {
  name        = "devops-project-2023188027"
  description = "A Terraform-managed DevOps project"
  visibility  = "public"
}

