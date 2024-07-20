resource "aws_api_gateway_deployment" "fiap_burger_deployment" {
  depends_on = [
    module.produtos.produtos_integration_POST,
    module.produtos.produtos_integration_GET,
    module.produtos.produto_id_integration_GET,
    module.produtos.produto_categoria_id_integration_GET,
    module.produtos.produto_id_integration_PUT,
    module.produtos.produto_id_integration_DELETE,
    module.produtos.produtos_health_integration_GET,
  ]
  rest_api_id = aws_api_gateway_rest_api.fiap_burger_api.id
  stage_name  = var.stageName
}
