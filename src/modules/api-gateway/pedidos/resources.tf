data "aws_api_gateway_resource" "pedido_confirmar" {
  rest_api_id = var.apiGtwId
  path        = "/pedido/confirmar"
}

data "aws_api_gateway_resource" "pedido_avaliar" {
  rest_api_id = var.apiGtwId
  path        = "/pedido/avaliar"
}

data "aws_api_gateway_resource" "pedido_status" {
  rest_api_id = var.apiGtwId
  path        = "/pedido/status"
}

data "aws_api_gateway_resource" "pedido_status" {
  rest_api_id = var.apiGtwId
  path        = "/pedido/status"
}