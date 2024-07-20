data "aws_api_gateway_resource" "clientes" {
  rest_api_id = var.apiGtwId
  path        = "/clientes"
}

data "aws_api_gateway_resource" "cliente_id" {
  rest_api_id = var.apiGtwId
  path        = "/cliente/{id-cliente}"
}
