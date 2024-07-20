resource "aws_api_gateway_rest_api" "fiap_burger_api" {
  name        = var.apiGatewayName
  description = "API Gateway for microservices"
}

output "api_gateway_id" {
  description = "ID do API Gateway"
  value       = aws_api_gateway_rest_api.fiap_burger_api.id
}

output "api_gateway_root_resource_id" {
  description = "ID do recurso raiz do API Gateway"
  value       = aws_api_gateway_rest_api.fiap_burger_api.root_resource_id
}