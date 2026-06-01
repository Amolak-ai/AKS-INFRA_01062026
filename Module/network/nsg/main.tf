resource "azurerm_network_security_group" "nsg0" {

  for_each = var.nsg1

  name = lower("${var.prefix}-${each.value.name}-${each.key}")

  location            = each.value.location
  resource_group_name = var.rg_map[each.value.resource_group_name].name

  dynamic "security_rule" {

    for_each = each.value.security_rules

    content {

      name                       = security_rule.value.name
      priority                   = security_rule.value.priority
      direction                  = security_rule.value.direction
      access                     = security_rule.value.access
      protocol                   = security_rule.value.protocol
      source_port_range          = "*"
      destination_port_range     = security_rule.value.port
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }

  tags = local.common_tags
}