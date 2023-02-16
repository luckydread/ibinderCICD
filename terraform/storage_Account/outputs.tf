output "connection_string" {
  description = "Storage account coonection string"
  value       = azurerm_application_insights.issuereporting.instrumentation_key
}

