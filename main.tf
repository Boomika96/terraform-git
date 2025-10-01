terraform {
  backend "azurerm" {
    resource_group_name  = "tfRGM"
    storage_account_name = "terrafstorageacc"
    container_name       = "tfcontainers"
    key                   = "prod.terraform.tfstate"
  }
}


resource "azurerm_resource_group" "exrg" {
   name = var.rg_name
   location = var.location
}