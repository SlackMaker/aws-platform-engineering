module "vpc" {
  source = "../../modules/vpc"

  vpc_name   = "${local.env}-vpc"
  cidr_block = "10.10.0.0/16"

  tags = local.tags
}
