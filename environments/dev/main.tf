variable "resource_groups" {}
variable "virtual_networks" {}
variable "subnets" {}
variable "public_ip" {}
variable "vnet_peering" {}


module "resource_groups" {
  source          = "../../azurerm_resource_group"
  resource_groups = var.resource_groups
}

module "virtual_networks" {
  source = "../../azurerm_virtual_network"
  vnets  = var.virtual_networks
}

module "subnets" {
  source  = "../../azurerm_subnet"
  subnets = var.subnets
}

module "public_ip" {
  source     = "../../azurerm_public_ip"
  public_ips = var.public_ip
}

module "vnet_peering" {
  source       = "../../azurerm_vnet_peering"
  vnet_peering = var.vnet_peering
}