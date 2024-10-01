resource "azurerm_public_ip" "tpip26" {
    for_each = var.tpip
    name = each.key
    location = each.value.location
    resource_group_name = each.value.rg_name
    allocation_method = "Static"
    sku = "Standard"
}