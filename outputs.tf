output "api_management_api_operations" {
  description = "All api_management_api_operation resources"
  value       = azurerm_api_management_api_operation.api_management_api_operations
}
output "api_management_api_operations_api_management_name" {
  description = "List of api_management_name values across all api_management_api_operations"
  value       = [for k, v in azurerm_api_management_api_operation.api_management_api_operations : v.api_management_name]
}
output "api_management_api_operations_api_name" {
  description = "List of api_name values across all api_management_api_operations"
  value       = [for k, v in azurerm_api_management_api_operation.api_management_api_operations : v.api_name]
}
output "api_management_api_operations_description" {
  description = "List of description values across all api_management_api_operations"
  value       = [for k, v in azurerm_api_management_api_operation.api_management_api_operations : v.description]
}
output "api_management_api_operations_display_name" {
  description = "List of display_name values across all api_management_api_operations"
  value       = [for k, v in azurerm_api_management_api_operation.api_management_api_operations : v.display_name]
}
output "api_management_api_operations_method" {
  description = "List of method values across all api_management_api_operations"
  value       = [for k, v in azurerm_api_management_api_operation.api_management_api_operations : v.method]
}
output "api_management_api_operations_operation_id" {
  description = "List of operation_id values across all api_management_api_operations"
  value       = [for k, v in azurerm_api_management_api_operation.api_management_api_operations : v.operation_id]
}
output "api_management_api_operations_request" {
  description = "List of request values across all api_management_api_operations"
  value       = [for k, v in azurerm_api_management_api_operation.api_management_api_operations : v.request]
}
output "api_management_api_operations_resource_group_name" {
  description = "List of resource_group_name values across all api_management_api_operations"
  value       = [for k, v in azurerm_api_management_api_operation.api_management_api_operations : v.resource_group_name]
}
output "api_management_api_operations_response" {
  description = "List of response values across all api_management_api_operations"
  value       = [for k, v in azurerm_api_management_api_operation.api_management_api_operations : v.response]
}
output "api_management_api_operations_template_parameter" {
  description = "List of template_parameter values across all api_management_api_operations"
  value       = [for k, v in azurerm_api_management_api_operation.api_management_api_operations : v.template_parameter]
}
output "api_management_api_operations_url_template" {
  description = "List of url_template values across all api_management_api_operations"
  value       = [for k, v in azurerm_api_management_api_operation.api_management_api_operations : v.url_template]
}

