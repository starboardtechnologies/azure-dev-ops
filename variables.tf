

##################################################################################################

#AZURE RESOURCE GROUPS

variable "devops_resource_group_names" {
    type    = list
    default = ["dev-resource-group", "stage-resource-group", "prod-resource-group"]
}

variable "devops_resource_group_location" {
    type    = string
    default = <INSERT RESOURCE GROUP LOCATION>
}

##################################################################################################

#AZURE STORAGE ACCOUNTS

variable "devops_resource_storage_account_names" {
    type    = list
    default = ["<INSERT DEV STORAGE ACCOUNT NAME>", "<INSERT STAGE STORAGE ACCOUNT NAME>", "<INSERT PROD STORAGE ACCOUNT NAME>"]
}

variable "devops_storage_account_location" {
    type    = string
    default = <INSERT STORAGE ACCOUNTS LOCATION>
}

variable "devops_storage_account_account_tier" {
    type    = string
    default = <INSERT STORAGE ACCOUNT TIER>
}

variable "devops_storage_account_account_replication_type" {
    type    = string
    default = <INSERT STORAGE ACCOUNT REPLICATION TYPE>
}

##################################################################################################

#AZURE VIRTUAL NETWORKS

variable "devops_azure_virtual_network_names" {
    type    = list
    default = ["dev-virtual-network", "stage-virtual-network", "prod-virtual-network"] 
}

variable "devops_azure_virtual_network_location" {
    type    = string
    default = "Central US"
}

##################################################################################################
