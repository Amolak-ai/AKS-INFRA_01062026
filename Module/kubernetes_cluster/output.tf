output "aks_details"{
 value = {
    for k, v in azurerm_kubernetes_cluster.aks :
 k =>  {
    name = v.name
    location = v.location
    id =v.id
 } # ye key value lega usme ye azurerm_resource ka key lega
    
  }
}

#mujhe Id ki jarurat padi or portal pe jana na pade esliye ham usually Output block use karte hai...