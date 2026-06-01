variable "stg"{
  type = map(object({
    name = string
    resource_group_name = string
    location =string
    account_tier = string
    account_replication_type = string
   
    
  }))

 validation {
    condition = alltrue([
      for s in var.stg :
      contains(["westus2", "centralindia"], s.location)
    ])
    error_message = "Only westus2 and centralindia are allowed locations!"
  } 
}

variable "rg_map"{}

