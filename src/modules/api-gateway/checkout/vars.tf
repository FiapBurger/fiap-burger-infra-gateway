###########################################################################
## Load Balancers
###########################################################################
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
