variable "storage_accounts"{}


resource "azurerm_storage_account" "stg1"{
    
    for_each = var.storage_accounts

    name = each.key
    resource_group_name = each.value.rg_name
    location = each.value.location
    account_tier =  each.value.account_tier
    account_replication_type = each.value.replication_type

}