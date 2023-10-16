module rg {
    source = "./modules/rg"
    rg_name = var.rg_name
    location = var.location
}

module keyvault {
    depends_on = [ module.rg ]
    source = "../modules/keyvault"
    keyvault_name = var.keyvault_name
    rg_name = var.rg_name
    location = var.location
    tenant_id = var.tenant_id
    sku_name = var.sku_name
    soft_delete_retention_days = var.soft_delete_retention_days
    purge_protection_enabled = var.purge_protection_enabled
}

module storage {
    source = "../modules/storage"
    depends_on = [ module.rg ]
    rg_name = var.rg_name
    location = var.location
    storage_account_name = var.storage_account_name
    account_tier = var.account_tier
    account_replication_type = var.account_replication_type
    account_kind = var.account_kind
    enable_https_traffic_only = var.enable_https_traffic_only
    min_tls_version = var.min_tls_version
    public_network_access_enabled = var.public_network_access_enabled
}

module vnet {
    source = "../modules/vnet"
    depends_on = [ module.rg ]
    rg_name = var.rg_name
    location = var.location
    vnet_name = var.vnet_name
    address_space = var.address_space
    subnet_name = var.subnet_name
    subnet_address_prefixes = var.subnet_address_prefixes
    subnet_name2 = var.subnet_name2
    subnet_address_prefixes2 = var.subnet_address_prefixes2
}