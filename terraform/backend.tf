terraform {
  backend "azurerm" {
    resource_group_name  = "test-rg"
    storage_account_name = "statest0145"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
