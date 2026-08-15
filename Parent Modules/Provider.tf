terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "kushrg1"
  #   storage_account_name = "kushstg"
  #   container_name       = "kushcnr"
  #   key                  = "kush2.terraform.tfstate"
  # }

}
provider "azurerm" {
  features {}
}