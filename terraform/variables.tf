variable "resource_group_name" {
  description = "The resource group name."
  type        = string
  default     = "ibinder"
}

variable "resource_group_location" {
  description = "The resource group location."
  type        = string
  default     = "northeurope"
}

variable "azurerm_service_plan_name" {
  description = "The app service plan name."
  type        = string
  default     = "issuerporting-appserviceplan"
}

variable "azurerm_service_plan_os_type" {
  description = "The app service plan OS type"
  type        = string
  default     = "Windows"
}

variable "azurerm_service_plan_sku_name" {
  description = "The app service plan sku name"
  type        = string
  default     = "P3v3"
}

variable "azurerm_key_vault_name" {
  description = "The keyvault name."
  type        = string
  default     = "customervaultlocker"
}