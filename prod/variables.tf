variable "vnet_name" {
  type = string
  description = "Name of the vnet"
}

variable "address_space" {
  type = list(string)
  description = "Address space of the vnet"
}

variable "subnet_name" {
  type = string
  description = "Name of the subnet"
}

variable "subnet_address_prefixes" {
  type = list(string)
  description = "Address prefixes of the subnet"
}

variable "subnet_name2" {
  type = string
  description = "Name of the subnet"
}

variable "subnet_address_prefixes2" {
  type = list(string)
  description = "Address prefixes of the subnet"
}

variable "keyvault_name" {
  type = string
  description = "Name of the keyvault"
}
  
variable "sku_name" {
    type = string
    description = "SKU name of the keyvault"
}

variable "soft_delete_retention_days" {
    type = number
    description = "Soft delete enabled"
}

variable "purge_protection_enabled" {
    type = bool
    description = "Purge protection enabled"
}

variable "storage_account_name" {
  type        = string
  description = "Storage account name"
  default = ""
  validation {
    condition     = can(regex("^[0-9a-z]{1,22}$", var.storage_account_name))
    error_message = "The name must be betwen 1 and 22 characters, can only contain lowercase letters and  numbers."
  }
}

variable "account_tier" {
  type        = string
  description = "Defines the Tier to use for this storage account."
  validation {
    condition     = contains(["standard", "premium"], lower(var.account_tier))
    error_message = "Supported values for account_tier are \"standard\" or \"premium\"."
  }
  default = "Standard"
}

variable "enable_https_traffic_only" {
    type = bool
    description = "value to enable https traffic only"
    default = false
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags which should be assigned to the Storage Account"
  default     = {}
}

variable "public_network_access_enabled" {
    type        = bool
    description = "Controls whether or not public network access is allowed for the storage account."
    default     = true
}

variable "account_replication_type" {
  type        = string
  description = "Defines the type of replication to use for this storage account."
  validation {
    condition     = contains(["lrs", "grs", "ragrs", "zrs", "gzrs", "ragzrs"], lower(var.account_replication_type))
    error_message = "Supported values for account_replication_type are \"LRS\", \"GRS\", \"RAGRS\", \"ZRS\", \"GZRS\", \"RAGZRS\"."
  }
  default = "LRS"
}

variable "account_kind" {
  type        = string
  description = "Defines the Kind of account."
  validation {
    condition     = contains(["blobstorage", "blockblobstorage", "filestorage", "storage", "storagev2"], lower(var.account_kind))
    error_message = "Supported values for account_kind are \"BlobStorage\", \"BlockBlobStorage\", \"FileStorage\", \"Storage\", or \"StorageV2\"."
  }
  default = "StorageV2"
}

variable "min_tls_version" {
  type        = string
  description = "The minimum supported TLS version for the storage account."
  validation {
    condition     = contains(["tls1_0", "tls1_1", "tls1_2"], lower(var.min_tls_version))
    error_message = "Valid values for min_tls_version are \"TLS1_0\", \"TLS1_1\", or \"TLS1_2\"."
  }
  default = "TLS1_2"
}

variable "rg_name" {
  type = string
  description = "Name of the resource group"
}

variable "location" {
  type = string
  description = "Location of the resource group"
}

variable "tenant_id" {
    type = string
    description = "Tenant ID"
}