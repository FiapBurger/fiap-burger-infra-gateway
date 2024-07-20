variable "apiGatewayName" {
  type        = string
  default     = "fiap-gtw-teste"
  description = "Nome do API Gateway"
}

variable "vpcId" {
  type        = string
  default     = "vpc-008220555f42a21df"
  description = "ID da VPC"
}

variable "subnetA" {
  type        = string
  default     = "subnet-02332486181d5f757"
  description = "ID da Subnet A"
}

variable "subnetB" {
  type        = string
  default     = "subnet-065b86e8bc1297d97"
  description = "ID da Subnet B"
}

variable "subnetC" {
  type        = string
  default     = "subnet-060b3fa08edb4c3f7"
  description = "ID da Subnet C"
}

variable "subnetIds" {
  type        = list(string)
  description = "Lista de IDs de subnets"
  default     = [var.subnetA, var.subnetB, var.subnetC]
}
