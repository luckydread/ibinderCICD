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

data "azurerm_key_vault_secret" "ARM_TENANT_ID" {
name = "tenantId"
vault_uri = "https://customervault22.vault.azure.net/secrets/TENANTID/b81246f97dba417698fea6eab0e711fa"
}

data "azurerm_key_vault_secret" "ARM_CLIENT_ID" {
name = "clientId"
vault_uri = "https://customervault22.vault.azure.net/secrets/CLIENTID/132e2ab4114d42a58c34bf037eb7425f"
}

data "azurerm_key_vault_secret" "ARM_SUBSCRIPTION_ID" {
name = "subscriptionId"
vault_uri = "https://customervault22.vault.azure.net/secrets/SUBSCRIPTIONID/31267b5d7ca64b04b1ea32d9abe0bfac"
}

data "azurerm_key_vault_secret" "CLIENT_SECRET" {
name = "clientSecret"
vault_uri = "https://customervault22.vault.azure.net/secrets/CLIENTSECRET/6b935ac03ca84427941c56895a14aec7"
}


provider "azurerm" {
  features {}
  subscription_id = data.azurerm_key_vault_secret.ARM_SUBSCRIPTION_ID
  client_id       = data.azurerm_key_vault_secret.ARM_CLIENT_ID
  client_secret   = data.azurerm_key_vault_secret.CLIENT_SECRET
  tenant_id       = data.azurerm_key_vault_secret.ARM_TENANT_ID
}


/*

"${data.azurerm_key_vault_secret.mySecret.value}"
}


module "app_service" {
  source                        = "./app_service"
  resource_group_location       = var.resource_group_location
  resource_group_name           = var.resource_group_name
  azurerm_service_plan_name     = var.azurerm_service_plan_name
  azurerm_service_plan_os_type  = var.azurerm_service_plan_os_type
  azurerm_service_plan_sku_name = var.azurerm_service_plan_sku_name
}*/


module "key_vault" {
  source = "./key_vault"
  resource_group_location       = var.resource_group_location
  resource_group_name           = var.resource_group_name
  azurerm_key_vault_name        = var.azurerm_key_vault_name
}