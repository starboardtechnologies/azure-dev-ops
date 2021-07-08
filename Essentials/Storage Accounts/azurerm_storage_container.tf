resource "azurerm_storage_container" "devops_azure_storage_container" {
  count                 = 3  
  name                  = var.devops_azure_storage_container_names[count.index]
  storage_account_name  = var.devops_resource_storage_account_names[count.index]
  container_access_type = var.devops_azure_storage_container_access_type[count.index]
}

