resource "aws_api_gateway_integration" "clientes_integration_POST" {
  rest_api_id             = var.apiGtwId
  resource_id             = data.aws_api_gateway_resource.checkout.id
  http_method             = "POST"
  integration_http_method = "POST"
  type                    = "HTTP_PROXY"
  uri                     = "http://${aws_lb.checkout_fiap_burger_lb.dns_name}"
  connection_type         = "VPC_LINK"
  connection_id           = var.vpcLinkId
}

resource "aws_api_gateway_integration" "clientes_integration_GET" {
  rest_api_id             = var.apiGtwId
  resource_id             = data.aws_api_gateway_resource.checkout.id
  http_method             = "GET"
  integration_http_method = "GET"
  type                    = "HTTP_PROXY"
  uri                     = "http://${aws_lb.checkout_fiap_burger_lb.dns_name}"
  connection_type         = "VPC_LINK"
  connection_id           = var.vpcLinkId
}
