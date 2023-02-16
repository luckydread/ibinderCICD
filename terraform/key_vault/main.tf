
data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "issuereporting" {
  name                        = var.azurerm_key_vault_name
  location                    = var.resource_group_location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = true
  soft_delete_retention_days  = 90
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  purge_protection_enabled    = true
  sku_name                    = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get", "List",
    ]

    secret_permissions = [
      "Get", "List", "Set"
    ]
    storage_permissions = [
      "Get", "List", "Set"
    ]
  }
  network_acls {
    # The Default Action to use when no rules match from ip_rules / 
    # virtual_network_subnet_ids. Possible values are Allow and Deny
    default_action = "Deny"

    # Allows all azure services to access your keyvault. Can be set to 'None'
    bypass = "AzureServices"

    # The list of allowed ip addresses.
    #ip_rules = ["1.1.1.1", "2.2.2.2"]

  }
}
