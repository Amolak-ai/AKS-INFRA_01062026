output "storage_account" {
  value = {
    for k, v in azurerm_storage_account.stg :
 k =>  {
    name = v.name
    location = v.location
    id =v.id
 } # ye key value lega usme ye azurerm_resource ka key lega
    
  }
}