output "storage" {

  value = azurerm_storage_account.storage_account.name

}




output "storage_account_primary_access_key" {

  value = azurerm_storage_account.storage_account.primary_access_key

  sensitive = true

}




output "container_names" {

  value = azurerm_storage_container.storage_containers.*.name

}
