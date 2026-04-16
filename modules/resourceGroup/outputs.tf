output "resourceGroup_name" {
  description = "Resource Group Name"
  value = azurerm_resource_group.resourceGroup.name
}

output "resourceGroup_location" {
  description = "Resource Group Location"
  value = azurerm_resource_group.resourceGroup.location
}