output "role_arn" {
  value       = aws_iam_role.github_actions.arn
  description = "ARN da Role que o GitHub Actions vai assumir"
}


