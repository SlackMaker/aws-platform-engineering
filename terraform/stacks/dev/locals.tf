locals {
  project = "aws-platform-engineering"
  env     = var.env

  tags = {
    Project     = local.project
    Environment = local.env
    ManagedBy   = "Terraform"
    Owner       = "Platform"
  }
}
