data "azurerm_subnet" "subnet" {
  for_each             = var.virtual_machines
  name                 = each.value.nic_subnet_name
  virtual_network_name = each.value.nic_vnet_name
  resource_group_name  = each.value.resource_group_name
}