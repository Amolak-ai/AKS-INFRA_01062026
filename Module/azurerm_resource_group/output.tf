output "rg_names" {
  value = {
    for k, v in azurerm_resource_group.rg :
 k =>  {
    name = v.name
    location = v.location
    id =v.id
 } # ye key value lega usme ye azurerm_resource ka key lega
    
  }
}