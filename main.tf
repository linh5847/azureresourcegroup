terraform {
    backend "azurerm" {
        storage_account_name    = "vntechsolterraform"
        container_name          = "vntechsolterraformstate"
        access_key              = "iCl4zC0mpPdUjdueS+2ci1D0VwfMIeajCFm2DIbegxebuaw8mTD/ef3S+XBrKgXIUuQSvcVvIkcpjMjU5ler2w=="
    }
}
/*
terraform {
    required_providers {
        azurerm                 = {
            source              = "hashicorp/azurerm"
            version             = "~> 2.0"
        }
    }
}
*/
provider "azurerm" {
    version = "=2.0"
    features {}
}

module "Azure_Resource_Group" {
    source                      = "./resources"

    resource_group_name         = var.resource_group_name
    location                    = var.location
}