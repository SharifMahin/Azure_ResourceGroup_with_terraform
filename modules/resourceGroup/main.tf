# Here, resourceGroup can be any name. It has no relation to the folder name.
resource "azurerm_resource_group" "resourceGroup" {
  name     = var.resource_group_name # var.<variable name in module's variables.tf>
  location = var.resource_group_location
}