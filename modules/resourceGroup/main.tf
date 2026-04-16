# Here, resourceGroup can be any name. It has no relation to the folder name.
resource "azurerm_resource_group" "resourceGroup" {
  name     = var.resource_group_name
  location = var.resource_group_location
}