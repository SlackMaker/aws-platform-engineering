resource "aws_subnet" "this" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_block
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags                    = var.tags
}

resource "aws_route_table" "this" {
  count  = var.create_route_table ? 1 : 0
  vpc_id = var.vpc_id
  tags   = var.tags
}

resource "aws_route" "internet" {
  count                  = var.create_internet_route ? 1 : 0
  route_table_id         = aws_route_table.this[0].id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.internet_gateway_id
}

resource "aws_route_table_association" "this" {
  count          = var.create_route_table ? 1 : 0
  subnet_id      = aws_subnet.this.id
  route_table_id = aws_route_table.this[0].id
}
