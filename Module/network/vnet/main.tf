resource "azurerm_virtual_network" "vnet0" {

  for_each = var.vnet1

  name = lower("${var.prefix}-${each.value.name}-${each.key}")

  location            = each.value.location
  resource_group_name = var.rg_map[each.value.resource_group_name].name

  address_space = each.value.address_space

  tags = local.common_tags
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