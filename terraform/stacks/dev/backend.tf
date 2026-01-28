terraform {
  backend "s3" {
    bucket         = "aws-platform-engineering-terraform-state"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "aws-platform-engineering-terraform-lock"
    encrypt        = true
  }
}
