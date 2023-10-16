output "vnetname" {
    value = azurerm_virtual_network.vnet_demo.name
}

output vnetid {
    value = azurerm_virtual_network.vnet_demo.id
}

output "vnetaddress" {
    value = azurerm_virtual_network.vnet_demo.address_space
}

output "subnetname" {
    value = azurerm_subnet.subnet_demo.name
}

output "subnetprefix" {
    value = azurerm_subnet.subnet_demo.address_prefixes
}

output "subnetname2" {
    value = azurerm_subnet.subnet_demo2.name
}

output "subnetprefix2" {
    value = azurerm_subnet.subnet_demo2.address_prefixes
}