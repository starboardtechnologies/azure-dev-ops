##################################################################################################

#AZURE CONTENT DELIVERY NETWORK

variable "devops_cdn_profile_name" {
  type    = list
  default = ["devcdnprofile", "stagecdnprofile", "prodcdnprofile",]
}

variable "devops_cdn_profile_tags" {
  type    = list
  default = ["devcdnprofile", "stagecdnprofile", "prodcdnprofile"]
}

##################################################################################################

#AZURE DATA LAKE

variable "devops_azure_data_lake_store_names" {
    type = list
    default = ["azuredevdatalake", "azurestagedatalake", "azureproddatalake",]
}

variable "devops_data_lake_location" {
  type    = list
  default = ["centralus", "westeurope", "eastus2"]
}

##################################################################################################

#AZURE RESOURCE GROUPS

variable "devops_resource_group_names" {
    type    = list
    default = [<"INSERT DEV RESOURCE GROUP NAME">, <"INSERT STAGE RESOURCE GROUP NAME">, <"INSERT PROD RESOURCE GROUP NAME">]
}

variable "devops_resource_group_locations" {
    type    = string
    default = <"INSERT RESOURCE GROUP LOCATIONS">
}

##################################################################################################

#AZURE STORAGE ACCOUNTS

variable "devops_resource_storage_account_names" {
    type    = list
    default = [<"INSERT DEV STORAGE ACCOUNT NAME">, <"INSERT STAGE STORAGE ACCOUNT NAME">, <"INSERT PROD STORAGE ACCOUNT NAME">]
}

variable "devops_storage_account_location" {
    type    = string
    default = <"INSERT STORAGE ACCOUNTS LOCATION">
}

variable "devops_storage_account_account_tier" {
    type    = string
    default = <"INSERT STORAGE ACCOUNT TIER">
}

variable "devops_storage_account_account_replication_type" {
    type    = string
    default = <"INSERT STORAGE ACCOUNT REPLICATION TYPE">
}

##################################################################################################

#AZURE VIRTUAL NETWORKS

variable "devops_azure_virtual_network_names" {
    type    = list
    default = [<"INSERT DEV VIRTUAL NETWORK NAME">, <"INSERT STAGE VIRTUAL NETWORK NAME">, <"INSERT PROD VIRTUAL NETWORK NAME">] 
}

variable "devops_azure_virtual_network_location" {
    type    = string
    default = <"INSERT VIRTUAL NETWORK LOCATION">
}

variable "azurerm_network_ddos_protection_plans" {
    type    = list
    default = ["dev-virtual-netowrk-ddos-protection-plan", "stage-virtual-netowrk-ddos-protection-plan", "prod-virtual-netowrk-ddos-protection-plan"]
}

variable "devops_azurerm_public_ip_names" {
    type = list
    default = ["dev-public-ip-name", "stage-public-ip-name", "prod-public-ip-name",]
}

##################################################################################################
