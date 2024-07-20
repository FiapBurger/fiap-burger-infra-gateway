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

variable "vpcLinkId" {
  description = "Vpc Link Id"
  type        = string
}

variable "apiGtwId" {
  description = "apiGtwId"
  type        = string
}
