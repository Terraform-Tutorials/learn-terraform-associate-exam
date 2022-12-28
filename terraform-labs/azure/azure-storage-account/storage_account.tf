# Create a resource group
resource "azurerm_resource_group" "my_resource_group" {
  name     = ""
  location = ""

  tags = ""
}

resource "azurerm_storage_account" "my_storage_account" {
  name                     = ""
  resource_group_name      = ""
  location                 = ""
  account_tier             = ""
  account_replication_type = ""

  tags = {
    environment = ""
  }
}

resource "azurerm_storage_container" "my_storage_container" {
  name                  = ""
  storage_account_name  = ""
}