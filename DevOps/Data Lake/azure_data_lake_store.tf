resource "azurerm_data_lake_store" "azure-data-lake-store" {
  count               = 3    
  name                = var.devops_azure_data_lake_store_names[count.index]
  resource_group_name = var.devops_resource_group_names[count.index]
  location            = var.devops_data_lake_location[count.index]
  encryption_state    = "Enabled"
  encryption_type     = "ServiceManaged"
}
