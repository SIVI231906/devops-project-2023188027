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

variable "github_token" {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}


resource "github_repository" "devops_project_2023188027" {
  name        = "devops-project-2023188027"
  description = "A Terraform-managed DevOps project"
  visibility  = "public"
}

