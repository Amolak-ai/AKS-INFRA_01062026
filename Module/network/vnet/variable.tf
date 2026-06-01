variable "vnet1" {

  type = map(object({

    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    tags                = optional(map(string), {})

  }))

  validation {

    condition = alltrue([
      for v in values(var.vnet1) :
      contains(["westus2", "centralindia"], v.location)
    ])

    error_message = "Only westus2 and centralindia allowed."
  }
}

variable "rg_map" {
  type = map(any)
}

variable "prefix" {
  type = string
}
