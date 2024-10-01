data "azurerm_key_vault" "vmvault26" {
    name = "akkey"
    resource_group_name = "akrg"
  
}

data "azurerm_key_vault_secret" "vmvaultusername" {
    name = "vmusername"
    key_vault_id = data.azurerm_key_vault.vmvault26.id
  
}

data "azurerm_key_vault_secret" "vmvault26password" {
    name = "vmpassword"
    key_vault_id = data.azurerm_key_vault.vmvault26.id
  
}