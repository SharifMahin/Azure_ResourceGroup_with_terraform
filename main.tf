module "resource_group" {
  source = "./modules/resourceGroup"
  # terraform.tfvars → root variables.tf → root main.tf (module call + mapping) → module variables.tf → module main.tf (resource create)
  # root/variables.tf and terraform.tfvars must have the same value.
  # module/variables.tf does not need to match terraform.tfvars, because the mapping is handled through root/main.tf.
  # The left-side value "resource_group_name" must be the same as "resource_group_name" in modules/variables.tf. If you make any changes, you must update it on both sides.
  # The right-side value "rg_name" must be the same as "rg_name" in root/variables.tf and in terraform.tfvars. If you make any change, you must update it in all three places.
  resource_group_name     = var.rg_name
  resource_group_location = var.rg_location
}