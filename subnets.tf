resource "azurerm_subnet" "subnet1" {
    name = "terrform-subnet1"
    resource_group_name = "terraform"
    virtual_network_name = "terrform-vnet"
    address_prefixes = [ "10.0.1.0/24" ]
  
}