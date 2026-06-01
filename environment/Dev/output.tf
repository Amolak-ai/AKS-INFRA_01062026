output "rg_ka_output" {
  value = module.azurerm_resource_group.rg_names
}

output "storage_account_name" {
  value = module.azurerm_storage_account.storage_account
}

output "vnet_ka_output" {
  value = module.vnet.vnet_details
}
output "aks_output" {
  value = module.aks.aks_details
}