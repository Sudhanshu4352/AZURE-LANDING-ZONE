data "azurerm_virtual_network" "remote" {
    for_each           = var.vnet_peering
  name                = each.value.remote_vnet_name
  resource_group_name = each.value.remote_vnet_resource_group_name
}