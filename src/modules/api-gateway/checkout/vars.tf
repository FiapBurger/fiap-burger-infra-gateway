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

variable "lbCheckoutName" {
  description = "Nome do grupo de destino do load balancer para checkout"
  type        = string
  default     = "checkout-fiap-burger-tg"
}

variable "lbCheckoutTgName" {
  description = "Nome do grupo de destino do load balancer para checkout"
  type        = string
  default     = "checkout-fiap-burger-tg"
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

variable "vpcLinkId" {
  description = "Vpc Link Id"
  type        = string
}

variable "apiGtwId" {
  description = "apiGtwId"
  type        = string
}
