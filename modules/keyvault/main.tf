resource azurerm_key_vault "akv" {
    name = var.keyvault_name
    resource_group_name = var.rg_name
    location = var.location
    sku_name = var.sku_name
    tenant_id = var.tenant_id
    soft_delete_retention_days = var.soft_delete_retention_days
    purge_protection_enabled = var.purge_protection_enabled
}