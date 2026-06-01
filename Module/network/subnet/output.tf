output "subnet_details" {

  value = {

    for k, v in azurerm_subnet.subnet0 :

    k => {

      id   = v.id
      name = v.name

    }
  }
}