resource "azurerm_databricks_workspace" "devops_azure_databricks_workspaces" {
  count               =  3
  name                = var.devops_azure_databricks_workspace_name[count.index]
  resource_group_name = var.devops_resource_group_names[count.index]
  location            = var.devops_resource_group_locations[count.index]
  sku                 = "standard"

    tags = {
      Name = element(var.devops_azure_databricks_workspace_name_tags, count.index)
  }
}
