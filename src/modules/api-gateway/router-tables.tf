resource "aws_route_table" "public" {
  vpc_id = var.vpcId

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "${var.apiGatewayName}-public-rt"
  }
}

resource "aws_route_table_association" "subnetA" {
  subnet_id      = var.subnetA
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "subnetB" {
  subnet_id      = var.subnetB
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "subnetC" {
  subnet_id      = var.subnetC
  route_table_id = aws_route_table.public.id
}

output "route_table_id" {
  description = "ID da Route Table"
  value       = aws_route_table.public.id
}
