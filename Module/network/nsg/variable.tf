variable "nsg1" {

  type = map(object({

    name                = string
    location            = string
    resource_group_name = string

    security_rules = list(object({

      name      = string
      priority  = number
      direction = string
      access    = string
      protocol  = string
      port      = string

    }))

  }))
}

variable "rg_map" {
  type = map(any)
}

variable "prefix" {
  type = string
}