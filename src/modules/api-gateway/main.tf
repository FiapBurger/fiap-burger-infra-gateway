module "cliente" {
  source = "clientes"

  lbClientsName       = var.lbClientsName
  lbInternal          = var.lbInternal
  lbType              = var.lbType
  lbClientsTgName     = var.lbClientsTgName
  targetGroupPort     = var.targetGroupPort
  targetGroupProtocol = var.targetGroupProtocol
  listenerPort        = var.listenerPort
  listenerProtocol    = var.listenerProtocol
  defaultActionType   = var.defaultActionType
  subnetIds           = var.subnetIds
  vpcId               = var.vpcId
  securityGroupId     = aws_security_group.api_gateway_sg.id
  apiGtwId            = aws_api_gateway_rest_api.fiap_burger_api.id
  vpcLinkId           = aws_api_gateway_vpc_link.vpc_link.id
  apiGatewayName      = ""
  dnsName             = ""
  eksClusterEndpoint  = ""
}
