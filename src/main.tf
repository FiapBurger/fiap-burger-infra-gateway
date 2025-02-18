provider "aws" {
  region = "us-east-1"
}

locals {
  cluster_name = "hom-teste"
}

module "api_gateway" {
  source = "./modules/api-gateway"

  apiGatewayName       = var.apiGatewayName
  vpcId                = var.vpcId
  subnetIds            = [var.subnetA, var.subnetB, var.subnetC]
  targetArns           = [module.produtos.target_group_arn]
  subnetA              = var.subnetA
  subnetB              = var.subnetB
  subnetC              = var.subnetC
  apiGtwRootResourceId = module.api_gateway.api_gateway_root_resource_id
}

module "produtos" {
  source               = "./modules/api-gateway/produtos"
  vpcId                = var.vpcId
  subnetIds            = [var.subnetA, var.subnetB, var.subnetC]
  apiGtwId             = module.api_gateway.api_gateway_id
  securityGroupId      = module.api_gateway.security_group_id
  vpcLinkId            = module.api_gateway.vpc_link_id
  apiGtwRootResourceId = module.api_gateway.api_gateway_root_resource_id
}

output "api_gateway_id" {
  description = "ID do API Gateway"
  value       = module.api_gateway.api_gateway_id
}

output "api_gateway_root_resource_id" {
  description = "ID do recurso raiz do API Gateway"
  value       = module.api_gateway.api_gateway_root_resource_id
}
