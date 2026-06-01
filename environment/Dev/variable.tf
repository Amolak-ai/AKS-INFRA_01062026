variable "rg" {
  type = map(object({
    name     = string
    location = string
  }))

}

variable "prefix" {
  type = string
}

variable "environment" {
  type = string
}

variable "stg" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string

  }))
}
variable "vnet1" {

  type = map(object({

    name                = string
    location            = string
    resource_group_name = string

    address_space = list(string)

    tags = optional(map(string), {})

  }))
}

# # =========================
# # SUBNET
# # =========================

# variable "subnet1" {

#   type = map(object({

#     name                = string
#     resource_group_name = string

#     vnet_name = string

#     address_prefixes = list(string)

#     delegation = optional(object({

#       name         = string
#       service_name = string

#     }))

#   }))
# }

# # =========================
# # NSG
# # =========================

# variable "nsg1" {

#   type = map(object({

#     name                = string
#     location            = string
#     resource_group_name = string

#     security_rules = list(object({

#       name      = string
#       priority  = number
#       direction = string
#       access    = string
#       protocol  = string
#       port      = string

#     }))

#   }))
# }

# # =========================
# # PUBLIC IP
# # =========================

# variable "pip1" {

#   type = map(object({

#     name                = string
#     location            = string
#     resource_group_name = string

#     allocation_method = optional(string, "Static")

#     sku = optional(string, "Standard")

#   }))
# }

# # =========================
# # NSG ASSOCIATION
# # =========================

# variable "association_map" {

#   type = map(object({

#     subnet_name = string
#     nsg_name    = string

#   }))
# }

variable "aks"{
  type = map(object({
    name = string
    location = string
    resource_group_name = string
    dns_prefix = string
  }))
}
