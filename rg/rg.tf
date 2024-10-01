resource "azurerm_resource_group" "trg27" {
    for_each = var.trg
    name = each.key
    location = each.value
  
}