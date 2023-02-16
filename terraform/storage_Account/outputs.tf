output "connection_string" {
  description = "Storage account conection string"
  value       = azurerm_storage_account.issuereporting.primary_connection_string
}