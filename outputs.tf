output "apim_id" {
  description = "ID of the API Management instance"
  value       = module.apim.id
}

output "apim_gateway_url" {
  description = "API Gateway URL"
  value       = module.apim.gateway_url
}

output "apim_portal_url" {
  description = "Developer portal URL"
  value       = module.apim.portal_url
}
