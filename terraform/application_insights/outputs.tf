output "azurerm_service_plan_id" {
  description = "The app service plan id."
  value       = azurerm_service_plan.issuereporting.id
}

output "instrumentation_key" {
  description = "Instrumentation key provided by resource."
  value       = azurerm_application_insights.issuereporting.instrumentation_key
}

output "connection_string" {
  description = "Connection string provided by resource."
  value       = azurerm_application_insights.issuereporting.connection_string
}

