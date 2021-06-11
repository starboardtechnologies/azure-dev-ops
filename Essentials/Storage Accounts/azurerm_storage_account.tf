resource "azurerm_storage_account" "devops-storage-accounts" {
  count                    = 3
  name                     = var.devops_resource_storage_account_names[count.index]
  resource_group_name      = var.devops_resource_group_names[count.index]
  location                 = var.devops_storage_account_location
  account_tier             = var.devops_storage_account_account_tier
  account_replication_type = var.devops_storage_account_account_replication_type
}
