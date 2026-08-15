variable"resource_groups"{}
variable"virtual_networks"{}
variable"subnets"{}



module "resource_group" {
  source = "../Child Modules/Azurerm_Resource_Group"
  kushrg = var.resource_groups
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../Child Modules/Azurerm_vnet"
  kushvnts = var.virtual_networks
}

module "subnet" {
  depends_on = [module.resource_group, module.virtual_network]
  source     = "../Child Modules/Azurerm_subnet"
  kushsbts = var.subnets
}