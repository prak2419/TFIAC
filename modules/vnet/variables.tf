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

variable "rg_name" {
    type = string
    description = "Name of the resource group"
}

variable "location" {
    type = string
    description = "Location of the resource group"
}

variable "subnet_name2" {
  type = string
  description = "Name of the subnet"
}

variable "subnet_address_prefixes2" {
  type = list(string)
  description = "Address prefixes of the subnet"
}