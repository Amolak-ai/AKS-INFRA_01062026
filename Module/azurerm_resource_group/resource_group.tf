resource "azurerm_resource_group" "rg" {
  for_each = var.rg

  name = "${var.prefix}-${var.environment}-${each.value.name}-${each.value.location}"

  location = each.value.location

tags = local.comman_tags


  lifecycle {
    prevent_destroy = true
  }
}


  

