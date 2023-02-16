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

variable "azurerm_key_vault_name" {
  description = "The keyvault name."
  type        = string
  default     = "myvault"
}


variable "azurerm_service_plan_name" {
  description = "The app service plan name."
  type        = string
  default     = "ibinderappservice"

}

variable "azurerm_service_plan_os_type" {
  description = "The app service plan OS type"
  type        = string
  default     = "Windows"

}

variable "azurerm_service_plan_sku_name" {
  description = "The app service plan sku name"
  type        = string
  default     = "P1v2"
}


variable "azurerm_application_insights_type" {
  description = "The application insights type."
  type        = string
  default     = "web"
}

variable "azurerm_application_insights_name" {
  description = "The application insights name."
  type        = string
  default     = "issuereporting-application-insights"

}
