resource "azurerm_bastion_host" "tbastion26" {
    name = "tbastion261"
    location = "centralindia"
   resource_group_name = "trg261"

   ip_configuration {
     name = "bastion_ip"
     subnet_id = data.azurerm_subnet.bastionsnetdata.id
     public_ip_address_id = data.azurerm_public_ip.bastionpip.id
   }
  
}