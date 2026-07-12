variable "vnetpeering01" {}
variable "vnetpeering02" {}



resource "azurerm_virtual_network_peering" "peeringvnet01" {
  for_each                  = var.vnetpeering01
  name                      = each.key
  resource_group_name       = each.value.resource_group_name
  virtual_network_name      = each.value.virtual_network_name
  remote_virtual_network_id = each.value.remote_virtual_network_id
}

resource "azurerm_virtual_network_peering" "peeringvnet02" {
  for_each                  = var.vnetpeering02
  name                      = each.key
  resource_group_name       = each.value.resource_group_name
  virtual_network_name      = each.value.virtual_network_name
  remote_virtual_network_id = each.value.remote_virtual_network_id
}