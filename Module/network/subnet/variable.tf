variable "subnet1" {

  type = map(object({

    name                = string
    resource_group_name = string
    vnet_name           = string
    address_prefixes    = list(string)

    delegation = optional(object({

      name         = string
      service_name = string

    }))

  }))
}

variable "rg_map" {
  type = map(any)
}

variable "vnet_map" {
  type = map(any)
}

variable "prefix" {
  type = string
}
