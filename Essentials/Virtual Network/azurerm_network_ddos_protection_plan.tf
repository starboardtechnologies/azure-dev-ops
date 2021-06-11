resource "azurerm_network_ddos_protection_plan" "example" {
  count               = 3  
  name                = "azure-virtual-networks-region-ddos-protection plan"
  location            = var.devops_resource_group_locations[count.index]
  resource_group_name = var.devops_resource_group_names[count.index]
}

