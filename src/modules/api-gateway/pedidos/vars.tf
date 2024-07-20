###########################################################################
## Load Balancers
###########################################################################

variable "lbPedidosName" {
  description = "Nome do load balancer para clientes"
  type        = string
  default     = "fiap-burger-lb-pedidos"
}


variable "lbPedidosTgName" {
  description = "Nome do grupo de destino do load balancer para pedidos"
  type        = string
  default     = "pedidos-fiap-burger-tg"
}

variable "vpcId" {
  description = "ID da VPC"
  type        = string
}

variable "subnetIds" {
  description = "Lista de IDs de subnets"
  type        = list(string)
}

variable "securityGroupId" {
  description = "ID do grupo de segurança"
  type        = string
}

###########################################################################
## Integration
###########################################################################

variable "vpcLinkId" {
  description = "Vpc Link Id"
  type        = string
}

variable "apiGtwId" {
  description = "apiGtwId"
  type        = string
}

