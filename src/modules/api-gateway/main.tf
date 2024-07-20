module "produtos" {
  source = "./produtos"

  vpcId               = var.vpcId
  subnetIds           = var.subnetIds
  securityGroupId     = aws_security_group.api_gateway_sg.id
  apiGtwId            = aws_api_gateway_rest_api.fiap_burger_api.id
  vpcLinkId           = aws_api_gateway_vpc_link.vpc_link.id
  apiGtwRootResourceId = var.apiGtwRootResourceId
}
