resource "azurerm_public_ip" "devops_azurerm_public_ip" {
    count               = 3
    name                = var.devops_azurerm_public_ip_names[count.index]
    location            = var.devops_resource_group_locations[count.index]
    resource_group_name = var.devops_resource_group_names[count.index]
    allocation_method   = "Static"
    sku                 = "Standard"
}
