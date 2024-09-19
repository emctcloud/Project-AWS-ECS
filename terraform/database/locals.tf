locals {
  namespaced_service_name = "${var.service_name}-${var.environment}"

  # Network
  vpc     = data.terraform_remote_state.network.outputs.vpc
  subnets = data.terraform_remote_state.network.outputs.subnets
  #availability_zones = sort(data.aws_availability_zones.all.names)
  availability_zones = data.terraform_remote_state.network.outputs.selected_availability_zones


  bastion_host_sg_id = lookup(data.terraform_remote_state.bastion_host.outputs, "security_group_id", "")

  common_tags = {
    Project   = "Projeto AWS ECS Kxc"
    Component = "Database"
    CreatedAt = "2024-09-17"
    ManagedBy = "Terraform"
    Owner     = "Emanuel Claudino"
    Repository = "https://github.com/emctcloud/Project-AWS-ECS"
    Env        = var.environment
  }
}
