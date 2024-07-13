data "aws_api_gateway_resource" "pagamento" {
  rest_api_id = aws_api_gateway_rest_api.fiap_burger_api.id
  path        = "/pagamento"
}

data "aws_api_gateway_resource" "pagamento_id" {
  rest_api_id = aws_api_gateway_rest_api.fiap_burger_api.id
  path        = "/pagamento/{id-pagamento}"
}

data "aws_api_gateway_resource" "pagamento_consultar" {
  rest_api_id = aws_api_gateway_rest_api.fiap_burger_api.id
  path        = "/pagamento/consultar/{id-pagamento}"
}