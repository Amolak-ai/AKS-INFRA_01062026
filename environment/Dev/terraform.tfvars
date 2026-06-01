rg = {
  rg1 = {
    name     = "dummyrg0"
    location = "centralindia"
  }
  rg2 = {
    name     = "dummyrg1"
    location = "centralindia"
  }
}
prefix      = "meta"
environment = "dev"

stg = {
  stg01 = {
    name                     = "stg0011"
    resource_group_name      = "rg1" #key use kar raha hai yeha 
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"

  }
  stg02 = {
    name                     = "stg0022"
    resource_group_name      = "rg2" #key use kar raha hai yeha 
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"

  }

}
vnet1 = {
  vnet = {
    name                = "tplinkvnet"
    location            = "centralindia"
    resource_group_name = "rg1"
    address_space       = ["10.0.0.0/16"]

  }
}
aks = {
  aks1 = {
    name                = "drushti-aks"
  location            = "centralindia"
  resource_group_name = "rg1"
  dns_prefix          = "exampleaks1"
  }
}

   