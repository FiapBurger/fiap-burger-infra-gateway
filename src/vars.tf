variable "apiGatewayName" {
  description = "Name of the API Gateway"
  type        = string
}

variable "vpcId" {
  description = "VPC ID"
  type        = string
}

variable "subnetA" {
  description = "ID of subnet A"
  type        = string
}

variable "subnetB" {
  description = "ID of subnet B"
  type        = string
}

variable "subnetC" {
  description = "ID of subnet C"
  type        = string
}

variable "subnetIds" {
  description = "List of subnet IDs"
  type        = list(string)
  default     = [] # Defina um valor padrão vazio
}