resource azurerm_virtual_network "vnet_demo" {
    name                = var.vnet_name
    resource_group_name = var.rg_name
    location            = var.location
    address_space       = var.address_space
}

resource azurerm_subnet "subnet_demo" {
    name                 = var.subnet_name
    resource_group_name  = var.rg_name
    virtual_network_name = azurerm_virtual_network.vnet_demo.name
    address_prefixes     = var.subnet_address_prefixes
}

resource azurerm_subnet "subnet_demo2" {
    name                 = var.subnet_name2
    resource_group_name  = var.rg_name
    virtual_network_name = azurerm_virtual_network.vnet_demo.name
    address_prefixes     = var.subnet_address_prefixes2
}