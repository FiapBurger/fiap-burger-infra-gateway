resource "aws_api_gateway_rest_api" "fiap_burger_api" {
  name        = var.apiGatewayName
  description = "API Gateway for microservices"
}

data "aws_api_gateway_resource" "root" {
  rest_api_id = aws_api_gateway_rest_api.fiap_burger_api.id
  path        = "/app"
}

output "api_gateway_id" {
  value = aws_api_gateway_rest_api.fiap_burger_api.id
}

output "api_gateway_root_resource_id" {
  value = data.aws_api_gateway_resource.root.id
}
