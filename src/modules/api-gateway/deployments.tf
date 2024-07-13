resource "aws_api_gateway_deployment" "fiap_burger_deployment" {
  depends_on = [
    aws_api_gateway_integration.clientes_integration_POST,
    aws_api_gateway_integration.clientes_integration_GET,
    aws_api_gateway_integration.pedidos_integration_POST,
    aws_api_gateway_integration.pedidos_integration_GET,
    aws_api_gateway_integration.produtos_integration_POST,
    aws_api_gateway_integration.produtos_integration_GET,
  ]
  rest_api_id = aws_api_gateway_rest_api.fiap_burger_api.id
  stage_name  = var.stageName
}
