module "cliente" {
  source = "./clientes"

  vpcId               = var.vpcId
  subnetIds           = var.subnetIds
  securityGroupId     = aws_security_group.api_gateway_sg.id
  apiGtwId            = aws_api_gateway_rest_api.fiap_burger_api.id
  vpcLinkId           = aws_api_gateway_vpc_link.vpc_link.id
}

module "checkout" {
  source = "./checkout"

  vpcId               = var.vpcId
  subnetIds           = var.subnetIds
  securityGroupId     = aws_security_group.api_gateway_sg.id
  apiGtwId            = aws_api_gateway_rest_api.fiap_burger_api.id
  vpcLinkId           = aws_api_gateway_vpc_link.vpc_link.id
}

module "pedidos" {
  source = "./pedidos"

  vpcId               = var.vpcId
  subnetIds           = var.subnetIds
  securityGroupId     = aws_security_group.api_gateway_sg.id
  apiGtwId            = aws_api_gateway_rest_api.fiap_burger_api.id
  vpcLinkId           = aws_api_gateway_vpc_link.vpc_link.id
}

module "produtos" {
  source = "./produtos"

  vpcId               = var.vpcId
  subnetIds           = var.subnetIds
  securityGroupId     = aws_security_group.api_gateway_sg.id
  apiGtwId            = aws_api_gateway_rest_api.fiap_burger_api.id
  vpcLinkId           = aws_api_gateway_vpc_link.vpc_link.id
}
