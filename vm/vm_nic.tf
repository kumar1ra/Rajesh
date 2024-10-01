data "azurerm_subnet" "nicsubnet" {
    for_each = var.vm
    name = each.value.snet_name
    resource_group_name = each.value.rg_name
    virtual_network_name = each.value.vnet_name
  
}


resource "azurerm_network_interface" "tnic26" {
    for_each = var.vm
    name = each.value.nic_name
    location = each.value.location
    resource_group_name = each.value.rg_name

    ip_configuration {
      name = "nicip"
      subnet_id = data.azurerm_subnet.nicsubnet[each.key].id
      private_ip_address_allocation = "Dynamic"
    }
  
}

resource "azurerm_linux_virtual_machine" "tvm26" {
  # depends_on = [ azurerm_network_interface.tnic26 ]
  for_each =  var.vm
  name = each.key
  location = each.value.location
  resource_group_name = each.value.rg_name
  size = "Standard_F2"
  network_interface_ids = [azurerm_network_interface.tnic26[each.key].id]
  admin_username = data.azurerm_key_vault_secret.vmvaultusername.value
  admin_password = data.azurerm_key_vault_secret.vmvault26password.value
  disable_password_authentication = "false"

  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer = "0001-com-ubuntu-server-jammy"
    sku = "22_04-lts"
    version = "latest"
  }

  

}