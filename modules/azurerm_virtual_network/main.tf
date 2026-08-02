variable "vnets"{}


resource "azurerm_virtual_network" "vnet" {
  for_each = var.vnets
  name                = each.key
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}