variable "keyvault_name" {
  type = string
  description = "Name of the keyvault"
}
  
variable "sku_name" {
    type = string
    description = "SKU name of the keyvault"
}

variable "tenant_id" {
    type = string
    description = "Tenant ID"
}

variable "soft_delete_retention_days" {
    type = number
    description = "Soft delete enabled"
}

variable "purge_protection_enabled" {
    type = bool
    description = "Purge protection enabled"
}

variable "rg_name" {
    type = string
    description = "Name of the resource group"
}

variable "location" {
    type = string
    description = "Location of the resource group"
}