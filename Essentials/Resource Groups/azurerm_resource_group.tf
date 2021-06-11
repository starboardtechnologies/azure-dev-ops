resource "azurerm_resource_group" "devops" {
  count    = 3
  name     = var.devops_resource_group_names[count.index]
  location = var.devops_resource_group_location
}
