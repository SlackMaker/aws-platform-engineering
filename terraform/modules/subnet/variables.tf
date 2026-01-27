variable "vpc_id" { type = string }
variable "cidr_block" { type = string }
variable "availability_zone" { type = string }
variable "map_public_ip_on_launch" { type = bool }
variable "create_route_table" { type = bool }
variable "create_internet_route" { type = bool }
variable "internet_gateway_id" { type = string }
variable "tags" { type = map(string) }
