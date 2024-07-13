resource "aws_api_gateway_rest_api" "fiap_burger_api" {
  name        = var.apiGatewayName
  description = "API Gateway for microservices"
}

output "api_gateway_url" {
  value = aws_api_gateway_deployment.fiap_burger_deployment.invoke_url
}
