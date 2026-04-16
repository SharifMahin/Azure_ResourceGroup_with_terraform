output "resource_group_name" {
  description = "Resource Group Name from module"
  value       = module.resource_group.resourceGroup_name
}

output "resource_group_location" {
  description = "Resource Group Location from module"
  value       = module.resource_group.resourceGroup_location
}