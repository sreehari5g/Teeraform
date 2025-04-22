#provider block

provider "azurerm" {
  version = "=3.0.0"
  features {}
  # Configuration options
}


# resource block
resource "azurerm_resource_group" "rg" {
  name     = "rg-01"
  location = "eastus"
}
output "id" {
  value = data.azurerm_resource_group.rg.id
}