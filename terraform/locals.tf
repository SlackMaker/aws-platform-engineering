locals {
  project = "aws-platform-engineering"
  tags = {
    Project   = local.project
    ManagedBy = "Terraform"
  }
}
