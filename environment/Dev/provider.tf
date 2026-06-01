terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name = "dummyrg0"
  #   storage_account_name = "stg0011"
  #   container_name = " tfstate"
  #   key = "dev.terraform.tfstate"
  # }
}

provider "azurerm" {
  features {}
  subscription_id = "3b770c7c-3dd0-4873-ab89-7c5f4695e464"


}