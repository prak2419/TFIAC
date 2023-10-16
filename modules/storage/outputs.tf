output "storage_id" {
  value = (
    length(azurerm_storage_account.azstorage) > 0 ?
    azurerm_storage_account.azstorage.id : ""
  )
  description = "Resource identifier of the instance of Storage Account."
}

output "name" {
  value = (
    length(azurerm_storage_account.azstorage) > 0 ?
    azurerm_storage_account.azstorage.name : ""
  )
  description = "The name of the Storage Account."
}

output "access_key" {
  value = (
    length(azurerm_storage_account.azstorage) > 0 ?
    azurerm_storage_account.azstorage.primary_access_key : ""
  )
  description = "Primary access keyfor the Storage Account."
  sensitive   = true
}