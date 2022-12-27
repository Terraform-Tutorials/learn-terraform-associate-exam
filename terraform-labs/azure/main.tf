# Configure the Microsoft Azure Provider
provider "azurerm" {
    features {
      
    }
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "brazilsouth"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_space       = ["10.0.0.0/16"]
}