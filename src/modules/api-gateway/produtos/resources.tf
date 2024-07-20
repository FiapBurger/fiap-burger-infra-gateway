resource "aws_api_gateway_resource" "produtos" {
  rest_api_id = var.apiGtwId
  parent_id   = var.apiGtwRootResourceId
  path_part   = "produtos"
}

resource "aws_api_gateway_resource" "produto_id" {
  rest_api_id = var.apiGtwId
  parent_id   = aws_api_gateway_resource.produtos.id
  path_part   = "{id-produto}"
}

resource "aws_api_gateway_resource" "produtos_categoria" {
  rest_api_id = var.apiGtwId
  parent_id   = aws_api_gateway_resource.produtos.id
  path_part   = "categoria"
}

resource "aws_api_gateway_resource" "produtos_categoria_id" {
  rest_api_id = var.apiGtwId
  parent_id   = aws_api_gateway_resource.produtos_categoria.id
  path_part   = "{id-categoria}"
}

resource "aws_api_gateway_resource" "produtos_health" {
  rest_api_id = var.apiGtwId
  parent_id   = aws_api_gateway_resource.produtos.id
  path_part   = "health"
}

resource "aws_api_gateway_method" "produtos_POST" {
  rest_api_id   = var.apiGtwId
  resource_id   = aws_api_gateway_resource.produtos.id
  http_method   = "POST"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "produtos_GET" {
  rest_api_id   = var.apiGtwId
  resource_id   = aws_api_gateway_resource.produtos.id
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "produto_id_GET" {
  rest_api_id   = var.apiGtwId
  resource_id   = aws_api_gateway_resource.produto_id.id
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "produto_categoria_id_GET" {
  rest_api_id   = var.apiGtwId
  resource_id   = aws_api_gateway_resource.produtos_categoria_id.id
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "produto_id_PUT" {
  rest_api_id   = var.apiGtwId
  resource_id   = aws_api_gateway_resource.produto_id.id
  http_method   = "PUT"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "produto_id_DELETE" {
  rest_api_id   = var.apiGtwId
  resource_id   = aws_api_gateway_resource.produto_id.id
  http_method   = "DELETE"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "produtos_health_GET" {
  rest_api_id   = var.apiGtwId
  resource_id   = aws_api_gateway_resource.produtos_health.id
  http_method   = "GET"
  authorization = "NONE"
}
