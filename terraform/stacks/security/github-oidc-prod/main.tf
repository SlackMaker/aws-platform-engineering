module "github_oidc" {
  source       = "../../modules/github-oidc"
  github_repo  = "SlackMaker/aws-platform-engineering"
  aws_account_id = "728394854434"
  role_name    = "github-actions-terraform-prod"
}

