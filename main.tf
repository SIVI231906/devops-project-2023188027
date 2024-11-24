terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = "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"
}

resource "github_repository" "devops_project_2023188027" {
  name        = "devops-project-2023188027"
  description = "A Terraform-managed DevOps project"
  visibility  = "public"
}

