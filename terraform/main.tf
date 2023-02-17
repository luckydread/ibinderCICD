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


module "key_vault" {
  source                  = "./key_vault"
  resource_group_location = var.resource_group_location
  resource_group_name     = var.resource_group_name
  azurerm_key_vault_name  = var.azurerm_key_vault_name
}

module "app_service_plan" {
  source                        = "./app_service"
  resource_group_location       = var.resource_group_location
  resource_group_name           = var.resource_group_name
  azurerm_service_plan_name     = var.azurerm_service_plan_name
  azurerm_service_plan_os_type  = var.azurerm_service_plan_os_type
  azurerm_service_plan_sku_name = var.azurerm_service_plan_sku_name
}

module "application_insights" {
  source                            = "./application_insights"
  resource_group_location           = var.resource_group_location
  resource_group_name               = var.resource_group_name
  azurerm_application_insights_type = var.azurerm_application_insights_type
  azurerm_application_insights_name = var.azurerm_application_insights_name
}




module "storage_account" {
  source                       = "./storage_Account"
  resource_group_name          = var.resource_group_name
  resource_group_location      = var.resource_group_location
  azurerm_storage_account_name = var.azurerm_storage_account_name

}