resource "azurerm_resource_group" "Arrah1" {
    for_each = var.kushrg
    name = each.value.name
    location = each.value.location
}