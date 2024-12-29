terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.10.0"
    
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name = "terraform"
  location = "west Europe"
}

resource "azurerm_virtual_network" "vnet" {
  name = "terrform-vnet"
  location = "west Europe"
  address_space = ["10.0.0.0/16"]
  resource_group_name = "terraform"
  depends_on = [ azurerm_resource_group.rg ]
}

