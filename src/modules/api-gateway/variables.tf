variable "targetGroupPort" {
  description = "Porta do grupo de destino"
  type        = number
}

variable "dnsName" {
  description = "Nome DNS do load balancer"
  type        = string
}

variable "vpcId" {
  description = "ID da VPC"
  type        = string
}

variable "subnetIds" {
  description = "Lista de IDs de subnets"
  type        = list(string)
}

variable "securityGroupName" {
  description = "Nome do grupo de segurança"
  type        = string
  default     = "fiap-burger-lb-sg-gtw"
}

variable "securityGroupDescription" {
  description = "Descrição do grupo de segurança"
  type        = string
  default     = "Permitir tráfego HTTP"
}

variable "ingressFromPort" {
  description = "Porta de origem para ingress"
  type        = number
  default     = 80
}

variable "ingressToPort" {
  description = "Porta de destino para ingress"
  type        = number
  default     = 80
}

variable "ingressProtocol" {
  description = "Protocolo para ingress"
  type        = string
  default     = "tcp"
}

variable "ingressCidrBlocks" {
  description = "Blocos CIDR para ingress"
  type        = string
  default     = "0.0.0.0/0"
}

variable "egressFromPort" {
  description = "Porta de origem para egress"
  type        = number
  default     = 0
}

variable "egressToPort" {
  description = "Porta de destino para egress"
  type        = number
  default     = 0
}

variable "egressProtocol" {
  description = "Protocolo para egress"
  type        = string
  default     = "-1"
}

variable "egressCidrBlocks" {
  description = "Blocos CIDR para egress"
  type        = string
  default     = "0.0.0.0/0"
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

variable "stageName" {
  description = "Nome do estágio do deployment"
  type        = string
  default     = "prod"
}

variable "apiName" {
  description = "Nome da API"
  type        = string
  default     = "FiapBurgerAPI"
}

variable "apiDescription" {
  description = "Descrição da API"
  type        = string
  default     = "API Gateway para o FiapBurger"
}

variable "endpointType" {
  description = "Tipo de endpoint"
  type        = string
  default     = "REGIONAL"
}

variable "identitySource" {
  description = "Fonte de identidade"
  type        = string
  default     = "method.request.header.Authorization"
}

variable "authorizerTtl" {
  description = "TTL do autorizador"
  type        = number
  default     = 300
}

variable "authorizerType" {
  description = "Tipo de autorizador"
  type        = string
  default     = "TOKEN"
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

variable "apiGatewayName" {
  description = "Nome do API Gateway"
  type        = string
}

variable "eksClusterEndpoint" {
  description = "Endpoint do cluster EKS"
  type        = string
}

variable "vpcLinkName" {
  description = "Nome do VPC Link"
  type        = string
}

variable "targetArns" {
  description = "ARNs dos alvos para o VPC Link"
  type        = list(string)
}

variable "vpcLinkId" {
  description = "Vpc Link Id"
  type        = string
}

variable "apiGtwId" {
  description = "apiGtwId"
  type        = string
}