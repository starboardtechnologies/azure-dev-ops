variable "devops_resource_group_names" {
    type = list
    default = ["dev-resource-group", "stage-resource-group", "prod-resource-group"]
}

variable "devops_resource_group_location" {
    type = string
    default = <INSERT RESOURCE GROUP LOCATION>
}
