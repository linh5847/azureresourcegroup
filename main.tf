terraform {
    backend "azurerm" {
        storage_account_name    = "vntechsolterraform"
        container_name          = "vntechsolterraformstate"
    }
}

terraform {
    required_providers {
        azurerm                 = {
            source              = "hashicorp/azurerm"
            version             = "~> 2.0"
        }
    }
}

provider "azurerm" {}

module "Azure_Resource_Group" {
    source                      = "./resources"

    resource_group_name         = var.resource_group_name
    location                    = var.location
}