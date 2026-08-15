output "api_management_api_operations_id" {
  description = "Map of id values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_api_operations_api_management_name" {
  description = "Map of api_management_name values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.api_management_name if v.api_management_name != null && length(v.api_management_name) > 0 }
}
output "api_management_api_operations_api_name" {
  description = "Map of api_name values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.api_name if v.api_name != null && length(v.api_name) > 0 }
}
output "api_management_api_operations_description" {
  description = "Map of description values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.description if v.description != null && length(v.description) > 0 }
}
output "api_management_api_operations_display_name" {
  description = "Map of display_name values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "api_management_api_operations_method" {
  description = "Map of method values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.method if v.method != null && length(v.method) > 0 }
}
output "api_management_api_operations_operation_id" {
  description = "Map of operation_id values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.operation_id if v.operation_id != null && length(v.operation_id) > 0 }
}
output "api_management_api_operations_request" {
  description = "Map of request values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => one(v.request) if v.request != null && length(v.request) > 0 }
}
output "api_management_api_operations_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "api_management_api_operations_response" {
  description = "Map of response values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.response if v.response != null && length(v.response) > 0 }
}
output "api_management_api_operations_template_parameter" {
  description = "Map of template_parameter values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.template_parameter if v.template_parameter != null && length(v.template_parameter) > 0 }
}
output "api_management_api_operations_url_template" {
  description = "Map of url_template values across all api_management_api_operations, keyed the same as var.api_management_api_operations"
  value       = { for k, v in azurerm_api_management_api_operation.api_management_api_operations : k => v.url_template if v.url_template != null && length(v.url_template) > 0 }
}

