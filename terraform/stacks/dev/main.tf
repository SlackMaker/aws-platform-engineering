provider "aws" {
  region = var.region
}

locals {
  project = "aws-platform-engineering"
  tags = {
    Project     = local.project
    Environment = var.env
    ManagedBy  = "Terraform"
  }
}

module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = "10.10.0.0/16"
  tags       = local.tags
}
