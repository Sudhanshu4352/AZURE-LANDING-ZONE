terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.76.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "backend-rg"
    storage_account_name = "backendstorageterraform"
    container_name       = "terraform-state-file"
    key                  = "dev.terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}