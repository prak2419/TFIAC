resource "azurerm_resource_group" "rg_demo" {
    name     = var.rg_name
    location = var.location
}
