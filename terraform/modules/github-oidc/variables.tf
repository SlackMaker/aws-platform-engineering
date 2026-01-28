variable "github_repo" {
  description = "GitHub repo no formato owner/repo"
  type        = string
  default     = "SlackMaker/aws-platform-engineering"
}

variable "role_name" {
  description = "Nome da role para GitHub Actions PROD"
  type        = string
  default     = "github-actions-terraform-prod"
}

