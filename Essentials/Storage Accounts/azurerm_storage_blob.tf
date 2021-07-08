resource "azurerm_storage_blob" "devops_azure_storage_blobs" {
  count                  = 3  
  name                   = var.devops_azure_storage_blob_names[count.index]
  storage_account_name   = var.devops_resource_storage_account_names[count.index]
  storage_container_name = var.devops_azure_storage_container_access_type[count.index]
  type                   = var.devops_azure_storage_blob_type[count.index]
  source                 = var.devops_azure_storage_blob_source[count.index]
}

