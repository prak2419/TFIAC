terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.75.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-tf-backend"
    storage_account_name = "stacctfrajanaka77"
    container_name       = "terraform"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}