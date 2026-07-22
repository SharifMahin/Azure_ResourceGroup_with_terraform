# output flow = module main.tf (resource created) → module outputs.tf → root outputs.tf → terminal
output "resource_group_name" {
  description = "Resource Group Name from module"
  value       = module.resource_group.resourceGroup_name  # module.<module name in root main.tf>.<output name in module's outputs.tf>
}

output "resource_group_location" {
  description = "Resource Group Location from module"
  value       = module.resource_group.resourceGroup_location
}