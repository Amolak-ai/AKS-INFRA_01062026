module "azurerm_resource_group" {
  source      = "../../Module/azurerm_resource_group"
  rg          = var.rg
  prefix      = var.prefix
  environment = var.environment
}
module "azurerm_storage_account" {
  depends_on = [module.azurerm_resource_group]
  source     = "../../Module/azurerm_storage_account"
  stg        = var.stg
  rg_map     = module.azurerm_resource_group.rg_names
}
module "vnet" {
  depends_on = [module.azurerm_resource_group]
  source     = "../../Module/network/vnet"
  vnet1      = var.vnet1
  rg_map     = module.azurerm_resource_group.rg_names
  prefix     = var.prefix
}

module "aks"{
  depends_on = [ module.azurerm_resource_group ]
  source = "../../Module/kubernetes_cluster"
  rg_map = module.azurerm_resource_group.rg_names
  aks = var.aks
  
}

