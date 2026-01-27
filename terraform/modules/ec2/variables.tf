variable "name" {}
variable "ami_id" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "security_group_ids" { type = list(string) }
variable "iam_instance_profile_name" {}
variable "key_name" { default = null }
variable "root_volume_size" { default = 30 }
variable "tags" { type = map(string) }
