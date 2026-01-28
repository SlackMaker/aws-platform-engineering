variable "vpc_name" {
  description = "Nome da VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR da VPC"
  type        = string
}

variable "tags" {
  description = "Tags comuns aplicadas aos recursos"
  type        = map(string)
  default     = {}
}

