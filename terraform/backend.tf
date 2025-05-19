terraform {
  backend "azurerm" {
    resource_group_name  = var.state_rg_name
    storage_account_name = var.statefie_st
    container_name       = var.blob_name
    key                  = var.key
  }
}
