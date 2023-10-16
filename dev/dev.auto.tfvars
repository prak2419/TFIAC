rg_name = "rg-tf-test1"
location = "centralindia"
keyvault_name = "rajanakakv0"
tenant_id = "91e8cdd3-b1ee-4f73-b960-8b2257d216b8"
sku_name = "standard"
soft_delete_retention_days = 90
purge_protection_enabled = false
storage_account_name = "rajanakastorage0"
account_tier = "Standard"
account_replication_type = "LRS"
account_kind = "StorageV2"
min_tls_version = "TLS1_2"
enable_https_traffic_only = true
public_network_access_enabled = true
vnet_name = "vnet-tf-demo"
subnet_name = "subnet-tf-demo"
subnet_name2 = "subnet-tf-demo2"
address_space = ["10.15.0.0/22"]
subnet_address_prefixes = ["10.15.0.0/24"]
subnet_address_prefixes2 = ["10.15.1.0/24"]
tags = {
  environment = "dev"
  costcenter = "it"
  }