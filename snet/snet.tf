resource "azurerm_subnet" "tsnet26" {
    for_each = var.tsnet
    name = each.key
    resource_group_name = each.value.rg_name
    virtual_network_name = each.value.vnet_name
    address_prefixes = each.value.snet_ip
  
}