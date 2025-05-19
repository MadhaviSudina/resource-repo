terraform {
  backend "azurerm" {
    state_rg_name =  "test-rg" 
    statefie_st   =  "statest0145"
    blob_name     =  "tfstate"
    key           =  "terraform.tfstate"
  }
}
