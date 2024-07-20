module "api_gateway" {
  source = "./modules/api-gateway"

  apiGatewayName = var.apiGatewayName
  vpcId          = var.vpcId
  subnetIds      = var.subnetIds
  targetArns     = [
    module.checkout.target_group_arn,
    module.clientes.target_group_arn,
    module.pedidos.target_group_arn,
    module.produtos.target_group_arn
  ]
  subnetA        = var.subnetA
  subnetB        = var.subnetB
  subnetC        = var.subnetA
}

module "checkout" {
  source            = "./modules/api-gateway/checkout"
  vpcId             = var.vpcId
  subnetIds         = [
    var.subnetA,
    var.subnetB,
    var.subnetC
  ]
  apiGtwId          = module.api_gateway.api_gateway_id
  securityGroupId   = module.api_gateway.security_group_id
  vpcLinkId         = module.api_gateway.vpc_link_id
}

module "clientes" {
  source            = "./modules/api-gateway/clientes"
  vpcId             = var.vpcId
  subnetIds         = [
    var.subnetA,
    var.subnetB,
    var.subnetC
  ]
  apiGtwId          = module.api_gateway.api_gateway_id
  securityGroupId   = module.api_gateway.security_group_id
  vpcLinkId         = module.api_gateway.vpc_link_id
}

module "pedidos" {
  source            = "./modules/api-gateway/pedidos"
  vpcId             = var.vpcId
  subnetIds         = [
    var.subnetA,
    var.subnetB,
    var.subnetC
  ]
  apiGtwId          = module.api_gateway.api_gateway_id
  securityGroupId   = module.api_gateway.security_group_id
  vpcLinkId         = module.api_gateway.vpc_link_id
}

module "produtos" {
  source            = "./modules/api-gateway/produtos"
  vpcId             = var.vpcId
  subnetIds         = [
    var.subnetA,
    var.subnetB,
    var.subnetC
  ]
  apiGtwId          = module.api_gateway.api_gateway_id
  securityGroupId   = module.api_gateway.security_group_id
  vpcLinkId         = module.api_gateway.vpc_link_id
}
