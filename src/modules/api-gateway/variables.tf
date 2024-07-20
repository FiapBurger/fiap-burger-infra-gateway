variable "apiGatewayName" {
  description = "Nome do API Gateway"
  type        = string
}

variable "vpcId" {
  description = "ID da VPC"
  type        = string
}

variable "subnetA" {
  description = "ID da Subnet A"
  type        = string
}

variable "subnetB" {
  description = "ID da Subnet B"
  type        = string
}

variable "subnetC" {
  description = "ID da Subnet C"
  type        = string
}

variable "subnetIds" {
  description = "Lista de IDs de subnets"
  type        = list(string)
}

variable "targetArns" {
  description = "ARNs dos alvos para o VPC Link"
  type        = list(string)
}

variable "stageName" {
  description = "Nome do estágio do deployment"
  type        = string
  default     = "prod"
}
variable "apiGtwRootResourceId" {
  description = "Root Resource ID do API Gateway"
  type        = string
}