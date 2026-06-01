resource "azurerm_subnet" "subnet0" {

  for_each = var.subnet1

  name = lower("${var.prefix}-${each.value.name}-${each.key}")

  resource_group_name  = var.rg_map[each.value.resource_group_name].name

  virtual_network_name = var.vnet_map[each.value.vnet_name].name

  address_prefixes = each.value.address_prefixes

  dynamic "delegation" {

    for_each = lookup(each.value, "delegation", null) != null ? [1] : []

    content {

      name = each.value.delegation.name

      service_delegation {

        name = each.value.delegation.service_name

        actions = [
          "Microsoft.Network/virtualNetworks/subnets/action"
        ]
      }
    }
  }
}