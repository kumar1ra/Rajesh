trg_module1 = {
    trg261 = "centralindia"
}

tvnet_module1 = {
    tvnet261 = {
        location = "centralindia"
        rg_name = "trg261"
        vnet_ip = ["10.172.0.0/16"]
    }
}

tsnet_module1 = {
    tsnet261 = {
        location = "centralindia"
        rg_name = "trg261"
        vnet_name = "tvnet261"
        snet_ip = ["10.172.1.0/24"]
    }
    AzureBastionSubnet = {

        location = "centralindia"
        rg_name = "trg261"
        vnet_name = "tvnet261"
        snet_ip = ["10.172.2.0/26"]

    }
  
}

tpip_module1 = {
    tpip261 = {
        location = "centralindia"
        rg_name = "trg261"
        
    }
}


tvm_module1 = {
    vm1 = {
        snet_name = "tsnet261"
        rg_name = "trg261"
        location = "centralindia"
        vnet_name = "tvnet261"
        nic_name = "tnic261"

    }

    vm2 = {
        snet_name = "tsnet261"
        rg_name = "trg261"
        location = "centralindia"
        vnet_name = "tvnet261"
        nic_name = "tnic262"
        
    }
}

