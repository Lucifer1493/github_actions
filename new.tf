terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.10.0"
    
    }
  }
}

provider "azurerm" {
  client_id = "e119a416-3208-4e41-aa3d-bc9d4361fea6"
  client_secret = "BUE8Q~IQATTXeErwjJFC20VO2jXLMuNgoKUgLb2t"
  tenant_id = "51091b39-ecd6-4c81-8130-3fc9b5801d27"
  subscription_id = "5a588fb6-d891-4846-b36b-a6fd28b11a6f"
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

