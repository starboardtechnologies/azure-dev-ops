resource "azurerm_virtual_network" "devops-virtual-networks" {
  count               = 3  
  name                = var.devops_azure_virtual_network_names[count.index]
  location            = var.devops_azure_virtual_network_location
  resource_group_name = var.devops_resource_group_names[count.index]
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name              = "subnet1"
    address_prefix    = "10.0.1.0/24"
  }

  subnet {
    name              = "subnet2"
    address_prefix    = "10.0.2.0/24"
  }

  subnet {
    name              = "subnet3"
    address_prefix    = "10.0.3.0/24"
  }
}
