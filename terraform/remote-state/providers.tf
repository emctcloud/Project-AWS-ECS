provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Project   = "Projeto AWS ECS Kxc"
      Component = "Remote State"
      CreatedAt = "2024-09-17"
      ManagedBy = "Terraform"
      Owner     = "Emanuel Claudino"
      Repository = "https://github.com/emctcloud/Project-AWS-ECS"
    }
  }
}
