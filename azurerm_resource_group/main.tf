variable "resource_groups"{}



resource "azurerm_resource_group" "landing_zone_rg"{
    for_each = var.resource_groups
    name = each.key
    location = each.value.location
}