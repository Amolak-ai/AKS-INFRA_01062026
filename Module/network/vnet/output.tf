output "vnet_details" {

  value = {

    for k, v in azurerm_virtual_network.vnet0 :

    k => {

      id   = v.id
      name = v.name

    }
  }
}