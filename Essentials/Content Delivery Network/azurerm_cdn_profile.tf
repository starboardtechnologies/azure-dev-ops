resource "azurerm_cdn_profile" "devops_cdn_profiles" {
  count               = 3  
  name                = var.devops_cdn_profile_name[count.index]
  location            = var.devops_resource_group_locations[count.index]
  resource_group_name = var.devops_resource_group_names[count.index]
  sku                 = "Standard_Verizon"

  tags = {
      Name = element(var.devops_cdn_profile_tags, count.index)
  }
}
