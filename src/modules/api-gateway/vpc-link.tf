resource "aws_api_gateway_vpc_link" "vpc_link" {
  name        = var.apiGatewayName
  target_arns = var.targetArns

  lifecycle {
    create_before_destroy = true
  }
}

output "vpc_link_id" {
  value = aws_api_gateway_vpc_link.vpc_link.id
}
