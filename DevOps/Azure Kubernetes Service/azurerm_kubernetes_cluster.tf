resource "azurerm_kubernetes_cluster" "devops_azure_kubernetes_clusters" {
  count                 = 3  
  name                  = var.devops_azure_kubernetes_cluster_names[count.index]
  location              = var.devops_resource_group_locations[count.index]
  resource_group_name   = var.devops_resource_group_names[count.index]
  dns_prefix            = var.devops_azure_kubernetes_clusters_dns_prefixes[count.index]

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
      Name = element(var.devops_azure_kubernetes_cluster_tags, count.index)
  }
}
