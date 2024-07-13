variable "lbInternal" {
  description = "Load balancer interno"
  type        = bool
  default     = false
}

variable "lbType" {
  description = "Tipo de load balancer"
  type        = string
  default     = "network"
}

variable "targetGroupPort" {
  description = "Porta do grupo de destino"
  type        = number
  default     = 80
}

variable "targetGroupProtocol" {
  description = "Protocolo do grupo de destino"
  type        = string
  default     = "TCP"
}

variable "listenerPort" {
  description = "Porta do listener"
  type        = number
  default     = 80
}

variable "listenerProtocol" {
  description = "Protocolo do listener"
  type        = string
  default     = "TCP"
}

variable "defaultActionType" {
  description = "Tipo de ação padrão"
  type        = string
  default     = "forward"
}

variable "subnetIds" {
  description = "Lista de IDs de subnets"
  type        = list(string)
}

variable "vpcId" {
  description = "ID da VPC"
  type        = string
}

variable "securityGroupId" {
  description = "ID do grupo de segurança"
  type        = string
}

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

variable "vpcLinkId" {
  description = "Vpc Link Id"
  type        = string
}

variable "apiGtwId" {
  description = "apiGtwId"
  type        = string
}

variable "dnsName" {
  description = "dnsName"
  type        = string
}
