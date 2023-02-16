output "connection_string" {
  description = "Storage account coonection string"
  value       = azurerm_storage_account.issuereporting.primary_connection_string
}