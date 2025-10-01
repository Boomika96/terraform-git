terraform {
  backend "azurerm" {
    resource_group_name  = "tf-RG"
    storage_account_name = "tfstorageaccond"
    container_name       = "tfcontain"
    key                   = "prod.terraform.tfstate"
  }
}


resource "azurerm_resource_group" "exrg" {
   name = var.rg_name
   location = var.location
}