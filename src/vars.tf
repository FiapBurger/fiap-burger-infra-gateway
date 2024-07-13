variable "targetGroupPort" {
  description = "Porta do grupo de destino"
  type        = number
  default     = 80
}

variable "dnsName" {
  description = "The DNS name of the load balancer"
  type        = string
  default     = "a74026138b28347c89145d6326990be8-1950819271.us-east-1.elb.amazonaws.com"
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

variable "labRole" {
  type        = string
  default     = "arn:aws:iam::643230847802:role/LabRole"
  description = "ARN do role do EKS"
}

variable "eksClusterEndpoint" {
  description = "Endpoint do cluster EKS"
  type        = string
}

variable "apiGatewayName" {
  description = "Nome do API Gateway"
  type        = string
}

variable "subnetIds" {
  description = "Lista de IDs de subnets"
  type        = list(string)
  default     = ["subnet-02332486181d5f757", "subnet-065b86e8bc1297d97", "subnet-060b3fa08edb4c3f7"]
}

variable "targetArns" {
  description = "ARNs dos alvos para o VPC Link"
  type        = list(string)
}

variable "vpcLinkName" {
  description = "Nome do VPC Link"
  type        = string
}

variable "lbClientsName" {
  description = "Nome do load balancer para clientes"
  type        = string
  default     = "fiap-burger-lb-clients"
}

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

variable "lbClientsTgName" {
  description = "Nome do grupo de destino do load balancer para clientes"
  type        = string
  default     = "clients-fiap-burger-tg"
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

variable "lbPedidosName" {
  description = "Nome do load balancer para pedidos"
  type        = string
  default     = "fiap-burger-lb-pedidos"
}

variable "lbPedidosTgName" {
  description = "Nome do grupo de destino do load balancer para pedidos"
  type        = string
  default     = "pedidos-fiap-burger-tg"
}

variable "lbProdutosName" {
  description = "Nome do load balancer para produtos"
  type        = string
  default     = "fiap-burger-lb-produtos"
}

variable "lbProdutosTgName" {
  description = "Nome do grupo de destino do load balancer para produtos"
  type        = string
  default     = "produtos-fiap-burger-tg"
}

variable "lbCheckoutName" {
  description = "Nome do load balancer para checkout"
  type        = string
  default     = "fiap-burger-lb-checkout"
}

variable "lbCheckoutTgName" {
  description = "Nome do grupo de destino do load balancer para checkout"
  type        = string
  default     = "checkout-fiap-burger-tg"
}

variable "lbCategoriasName" {
  description = "Nome do load balancer para categorias"
  type        = string
  default     = "fiap-burger-lb-categorias"
}

variable "lbCategoriasTgName" {
  description = "Nome do grupo de destino do load balancer para categorias"
  type        = string
  default     = "categorias-fiap-burger-tg"
}

variable "vpcLinkId" {
  description = "Vpc Link Id"
  type        = string
}

variable "apiGtwId" {
  description = "apiGtwId"
  type        = string
}