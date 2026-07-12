output "api_management_api_operations_api_management_name" {
  description = "Map of api_management_name values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.api_management_name }
}
output "api_management_api_operations_api_name" {
  description = "Map of api_name values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.api_name }
}
output "api_management_api_operations_description" {
  description = "Map of description values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.description }
}
output "api_management_api_operations_display_name" {
  description = "Map of display_name values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.display_name }
}
output "api_management_api_operations_method" {
  description = "Map of method values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.method }
}
output "api_management_api_operations_operation_id" {
  description = "Map of operation_id values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.operation_id }
}
output "api_management_api_operations_request" {
  description = "Map of request values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.request }
}
output "api_management_api_operations_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.resource_group_name }
}
output "api_management_api_operations_response" {
  description = "Map of response values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.response }
}
output "api_management_api_operations_template_parameter" {
  description = "Map of template_parameter values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.template_parameter }
}
output "api_management_api_operations_url_template" {
  description = "Map of url_template values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.url_template }
}

