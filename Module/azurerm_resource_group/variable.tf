variable "rg" {
    type = map(object({
      name = string
      location = string
    }))
 validation {
    condition = alltrue([
      for rg in var.rg :
      contains(["westus2", "centralindia"], rg.location)
    ])
    error_message = "Only westus2 and centralindia are allowed locations!"
  } 
}

variable "prefix" {
    type = string
    }
    variable "environment" {
    type = string
    }
