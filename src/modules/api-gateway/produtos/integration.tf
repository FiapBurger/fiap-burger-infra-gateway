resource "aws_api_gateway_integration" "produtos_integration_POST" {
  rest_api_id             = var.apiGtwId
  resource_id             = aws_api_gateway_resource.produtos.id
  http_method             = "POST"
  integration_http_method = "POST"
  type                    = "HTTP_PROXY"
  uri                     = "http://${aws_lb.produtos_fiap_burger_lb.dns_name}/produtos"
  connection_type         = "VPC_LINK"
  connection_id           = var.vpcLinkId
}

resource "aws_api_gateway_integration" "produtos_integration_GET" {
  rest_api_id             = var.apiGtwId
  resource_id             = aws_api_gateway_resource.produtos.id
  http_method             = "GET"
  integration_http_method = "GET"
  type                    = "HTTP_PROXY"
  uri                     = "http://${aws_lb.produtos_fiap_burger_lb.dns_name}/produtos"
  connection_type         = "VPC_LINK"
  connection_id           = var.vpcLinkId
}

resource "aws_api_gateway_integration" "produto_id_integration_GET" {
  rest_api_id             = var.apiGtwId
  resource_id             = aws_api_gateway_resource.produto_id.id
  http_method             = "GET"
  integration_http_method = "GET"
  type                    = "HTTP_PROXY"
  uri                     = "http://${aws_lb.produtos_fiap_burger_lb.dns_name}/produtos/{id-produto}"
  connection_type         = "VPC_LINK"
  connection_id           = var.vpcLinkId
}

resource "aws_api_gateway_integration" "produto_categoria_id_integration_GET" {
  rest_api_id             = var.apiGtwId
  resource_id             = aws_api_gateway_resource.produtos_categoria_id.id
  http_method             = "GET"
  integration_http_method = "GET"
  type                    = "HTTP_PROXY"
  uri                     = "http://${aws_lb.produtos_fiap_burger_lb.dns_name}/produtos/categoria/{id-categoria}"
  connection_type         = "VPC_LINK"
  connection_id           = var.vpcLinkId
}

resource "aws_api_gateway_integration" "produto_id_integration_PUT" {
  rest_api_id             = var.apiGtwId
  resource_id             = aws_api_gateway_resource.produto_id.id
  http_method             = "PUT"
  integration_http_method = "PUT"
  type                    = "HTTP_PROXY"
  uri                     = "http://${aws_lb.produtos_fiap_burger_lb.dns_name}/produtos/{id-produto}"
  connection_type         = "VPC_LINK"
  connection_id           = var.vpcLinkId
}

resource "aws_api_gateway_integration" "produto_id_integration_DELETE" {
  rest_api_id             = var.apiGtwId
  resource_id             = aws_api_gateway_resource.produto_id.id
  http_method             = "DELETE"
  integration_http_method = "DELETE"
  type                    = "HTTP_PROXY"
  uri                     = "http://${aws_lb.produtos_fiap_burger_lb.dns_name}/produtos/{id-produto}"
  connection_type         = "VPC_LINK"
  connection_id           = var.vpcLinkId
}

resource "aws_api_gateway_integration" "produtos_health_integration_GET" {
  rest_api_id             = var.apiGtwId
  resource_id             = aws_api_gateway_resource.produtos_health.id
  http_method             = "GET"
  integration_http_method = "GET"
  type                    = "HTTP_PROXY"
  uri                     = "http://${aws_lb.produtos_fiap_burger_lb.dns_name}/produtos/health"
  connection_type         = "VPC_LINK"
  connection_id           = var.vpcLinkId
}

output "produtos_integration_POST" {
  value = aws_api_gateway_integration.produtos_integration_POST.id
}

output "produtos_integration_GET" {
  value = aws_api_gateway_integration.produtos_integration_GET.id
}

output "produto_id_integration_GET" {
  value = aws_api_gateway_integration.produto_id_integration_GET.id
}

output "produto_categoria_id_integration_GET" {
  value = aws_api_gateway_integration.produto_categoria_id_integration_GET.id
}

output "produto_id_integration_PUT" {
  value = aws_api_gateway_integration.produto_id_integration_PUT.id
}

output "produto_id_integration_DELETE" {
  value = aws_api_gateway_integration.produto_id_integration_DELETE.id
}

output "produtos_health_integration_GET" {
  value = aws_api_gateway_integration.produtos_health_integration_GET.id
}
