resource "azurerm_resource_group" "rgs" {
for_each = var.rg
name = each.key
location = each.value
}

resource "azurerm_storage_account" "storage" {
    depends_on = [ azurerm_resource_group.rgs ]
    for_each = var.storage_account
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    account_tier = "Standard"
    account_replication_type = "LRS"
    location = each.value.location
}
