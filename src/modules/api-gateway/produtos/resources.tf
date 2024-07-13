data "aws_api_gateway_resource" "produtos" {
  rest_api_id = var.apiGtwId
  path        = "/produtos"
}

data "aws_api_gateway_resource" "produto_id" {
  rest_api_id = var.apiGtwId
  path        = "/produtos/{id-produto}"
}

data "aws_api_gateway_resource" "produtos_categoria" {
  rest_api_id = var.apiGtwId
  path        = "/produtos/categoria/{id-categoria}"
}