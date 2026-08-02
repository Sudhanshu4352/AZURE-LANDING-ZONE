variable "resource_groups" {}
variable "virtual_networks" {}
variable "subnets" {}
variable "public_ip" {}
variable "vnet_peering" {}
variable "virtual_machines" {}


module "resource_groups" {
  source          = "../../modules/azurerm_resource_group"
  resource_groups = var.resource_groups
}

module "virtual_networks" {
    depends_on = [module.resource_groups]
  source = "../../modules/azurerm_virtual_network"
  vnets  = var.virtual_networks
}

module "subnets" {
    depends_on = [module.virtual_networks]
  source  = "../../modules/azurerm_subnet"
  subnets = var.subnets
}

module "public_ip" {
    depends_on = [module.resource_groups]
  source     = "../../modules/azurerm_public_ip"
  public_ips = var.public_ip
}

module "vnet_peering" {
    depends_on = [module.virtual_networks]
  source       = "../../modules/azurerm_vnet_peering"
  vnet_peering = var.vnet_peering
}

module "virtual_machines" {
    depends_on = [module.subnets, module.public_ip]
  source           = "../../modules/azurerm_virtual_machine"
  virtual_machines = var.virtual_machines
}   