data "azurerm_subnet" "bastionsnetdata" {
    name = "AzureBastionSubnet"
    virtual_network_name = "tvnet261"
    resource_group_name = "trg261"
  
}

data "azurerm_public_ip" "bastionpip" {
    name = "tpip261"
    resource_group_name = "trg261"
  
}