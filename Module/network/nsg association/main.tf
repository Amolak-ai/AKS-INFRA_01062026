resource "azurerm_subnet_network_security_group_association" "assoc0" {

  for_each = var.association_map

  subnet_id = var.subnet_map[each.value.subnet_name].id

  network_security_group_id =
  var.nsg_map[each.value.nsg_name].id
}