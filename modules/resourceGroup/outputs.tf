output "resourceGroup_name" {
  description = "Resource Group Name"
  value = azurerm_resource_group.resourceGroup.name  # azurerm_resource_group.<resource name in module's main.tf>.<azure resource attribute>
}

output "resourceGroup_location" {
  description = "Resource Group Location"
  value = azurerm_resource_group.resourceGroup.location
}