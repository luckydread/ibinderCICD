resource "azurerm_service_plan" "issuereporting" {
  name                = var.azurerm_service_plan_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  os_type             = var.azurerm_service_plan_os_type
  sku_name            = var.azurerm_service_plan_sku_name
}
