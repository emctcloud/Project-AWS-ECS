locals {
  namespaced_service_name = "${var.service_name}-${var.environment}"

  # Network
  vpc     = data.terraform_remote_state.network.outputs.vpc
  subnets = data.terraform_remote_state.network.outputs.subnets

  common_tags = {
    Project   = "Projeto AWS ECS Kxc"
    Component = "BastionHost"
    CreatedAt = "2024-09-17"
    ManagedBy = "Terraform"
    Owner     = "Emanuel Claudino"
    Repository = "https://github.com/emctcloud/Project-AWS-ECS"
    Env        = var.environment
  }
}
