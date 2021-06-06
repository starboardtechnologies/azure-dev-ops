terraform {
  required_providers {
    azuredevops = {
      source = "microsoft/azuredevops"
      version = ">=0.1.0"
    }
  }
}

resource "azuredevops_project" "azure-devops-project" {
  name               = "azure-devops-project"
  description        = var.azure_devops_project_description
}
