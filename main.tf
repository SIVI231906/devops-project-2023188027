terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 4.0"
    }
  }
}

variable "github_token" {
  description = "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"
  type        = string
  sensitive   = true
}

provider "github" {
  token = var.github_token
}


resource "github_repository" "devops_project_2023188027" {
  name        = "devops-project-2023188027"
  description = "A Terraform-managed DevOps project"
  visibility  = "public"
}

