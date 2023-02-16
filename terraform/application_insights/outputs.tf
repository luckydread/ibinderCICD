output "instrumentation_key" {
  description = "Instrumentation key provided by resource."
  value       = azurerm_application_insights.issuereporting.instrumentation_key
}

output "connection_string" {
  description = "Connection string provided by resource."
  value       = azurerm_application_insights.issuereporting.connection_string
}

output "azurerm_service_plan_id" {
  description = "Object ID of the App Insights instance."
  value       = azurerm_application_insights.issuereporting.id
}