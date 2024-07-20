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

variable "apiGtwId" {
  description = "ID da API Gateway"
  type        = string
}

variable "vpcLinkId" {
  description = "ID do VPC Link"
  type        = string
}

variable "apiGtwRootResourceId" {
  description = "Root Resource ID do API Gateway"
  type        = string
}
