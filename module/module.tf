module "trg_module" {
    source = "../rg"
    trg = var.trg_module1
  
}

module "tvnet_module" {
    depends_on = [ module.trg_module ]
    source = "../vnet"
    tvnet = var.tvnet_module1
  
}

module "tsnet_module" {
    depends_on = [module.tvnet_module]
    source = "../snet"
    tsnet = var.tsnet_module1
}

module "tpip_module" {
    depends_on = [module.tsnet_module]
    source = "../pip"
    tpip = var.tpip_module1
}

module "tbastion_module" {
    depends_on = [ module.tpip_module ]
    source = "../bation"
  
}

module "tvm_module" {
    depends_on = [ module.tbastion_module ]
    source = "../vm"
    vm = var.tvm_module1
  
}

