terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = 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
}

resource "github_repository" "devops_project_2023188027" {
  name        = "devops-project-2023188027"
  description = "A Terraform-managed DevOps project"
  visibility  = "public"
}

