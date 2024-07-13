output "api_gateway_id" {
  description = "ID do API Gateway"
  value       = module.api_gateway.api_gateway_id
}

output "api_gateway_root_resource_id" {
  description = "ID do recurso raiz do API Gateway"
  value       = module.api_gateway.api_gateway_root_resource_id
}
