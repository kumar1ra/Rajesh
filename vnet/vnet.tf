resource "azurerm_virtual_network" "tvnet26" {
    for_each = var.tvnet
    name = each.key
    location = each.value.location
    resource_group_name = each.value.rg_name
    address_space = each.value.vnet_ip
  
}