resource "azurerm_application_insights" "issuereporting" {
  name                = var.azurerm_application_insights_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  application_type    = var.azurerm_application_insights_type
}