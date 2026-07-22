  # Resource flow = terraform.tfvars → root variables.tf → root main.tf (module call + mapping) → module variables.tf → module main.tf (resource create)
module "resource_group" {
  source = "./modules/resourceGroup"

  # module/variables.tf does not need to match terraform.tfvars, because the mapping is handled through root/main.tf.
  # The left-side value "resource_group_name" must be the same as "resource_group_name" in modules/variables.tf. 
  # The right-side value "rg_name" must be the same as "rg_name" in root/variables.tf and in terraform.tfvars. 

  resource_group_name     = var.rg_name # <variable name in module's variables.tf> = <variable name in root's variables.tf>
  resource_group_location = var.rg_location

  #  if vnet root's main.tf ->   location = module.resource_group.location  
  # module.<module name in root main.tf>.location → .location the name of the output defined in modules/resource-group/outputs.tf
  # flow = modules/resource-group/main.tf → modules/resource-group/outputs.tf → root/main.tf → modules/network/variables.tf → modules/network/main.tf → Azure

}