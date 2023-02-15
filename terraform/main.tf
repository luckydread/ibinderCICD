terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.42.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "ibinder"
    storage_account_name = "customeruserstorage"
    container_name       = "state"
    key                  = "terraform.tfstate"
  }
}


provider "azurerm" {
  features {}
}


/*

"${data.azurerm_key_vault_secret.mySecret.value}"
}
subscription_id = data.azurerm_key_vault_secret.ARM_SUBSCRIPTION_ID
  client_id       = data.azurerm_key_vault_secret.ARM_CLIENT_ID
  client_secret   = data.azurerm_key_vault_secret.CLIENT_SECRET
  tenant_id       = data.azurerm_key_vault_secret.ARM_TENANT_ID

module "app_service" {
  source                        = "./app_service"
  resource_group_location       = var.resource_group_location
  resource_group_name           = var.resource_group_name
  azurerm_service_plan_name     = var.azurerm_service_plan_name
  azurerm_service_plan_os_type  = var.azurerm_service_plan_os_type
  azurerm_service_plan_sku_name = var.azurerm_service_plan_sku_name
}*/
