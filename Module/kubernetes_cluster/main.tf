resource "azurerm_kubernetes_cluster" "aks" {
  for_each = var.aks
  name                = each.value.name
  location            = each.value.location
  resource_group_name = var.rg_map[each.value.resource_group_name].name
  dns_prefix          = each.value.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = local.comman_tags
}
output "client_certificate" {
  value = {
    for k, v in azurerm_kubernetes_cluster.aks :
    k => v.kube_config[0].client_certificate
  }

  sensitive = true
}

output "kube_config" {
  value = {
    for k, v in azurerm_kubernetes_cluster.aks :
    k => v.kube_config_raw
  }

  sensitive = true
}





























# resource "azurerm_storage_account" "stg"{
#  for_each = var.stg
#  name = "${var.prefix1}${each.value.name}"
# resource_group_name = each.value.resource_group_name
# location = each.value.location
# account_tier = "Standard"
# account_replication_type = "LRS"

#  tags = {
#     environment = "dev"
#     managed_by = "terraform"
#   }

#  lifecycle {
#     prevent_destroy = true
#   }

# }