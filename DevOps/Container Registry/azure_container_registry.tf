resource "azurerm_container_registry" "acr" {
  count                    = 3  
  name                     = var.devops_azurerm_container_registry_names[count.index]
  resource_group_name      = var.devops_resource_group_names[count.index]
  location                 = var.devops_resource_group_locations[count.index]
  sku                      = "Premium"
  admin_enabled            = false
  georeplication_locations = var.devops_azurerm_container_registry_georeplication_locations
}

