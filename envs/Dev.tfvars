rg_name        = "opellargdev"
proj-shortname = "opella"
environment    = "Dev"
loc            = "eastus"
add_space      = ["10.0.0.0/20"]
subnets = {
  subnet1 = {
      name             = "vm_subnet"
      address_prefixes = ["10.0.1.0/29"]
  }
}
sku_vm  = "Standard_B1s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_HDD"
}
source_image_reference = {
  publisher = "Canonical"
  offer     = "UbuntuServer"
  sku       = "20_04-lts"
  version   = "latest"
}
linux_configuration = {
  admin_username = "opelladmin"
  public_key     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCjrIfWjp8RVR36Q2VnxofJDDaiCtc5n5kNavBBfzxlm1AwWuostRnMEoi9gVsX6qSZsFA0uZYCvlQQCCsdgQniThMjsbTOBCe/Vu0OhdK70XGHKDsQz1N6yyuhPWbZcedQ9eaZwSY8gr7Hkmu7I1aBX2GVg1rG5lzilZr3fAl9LqeKLGKs+luHVMQvzJ/9yEY4797FQtScwQZOm90FHSNktWfJkI8IFRSmndK4fzBVDjCTPiXCiqPFXXlZ3P0oxfOoRLx/zJAGwXTU2C36wWBpVgXauSQqWpoPGsnkDgjyk+oXqjLOsuHnItwLOewq3+rTtCBIgBDz+bqZFhZcO+K37wF+jaQuHxIEheFN4zrIMgeGZ6DkSVzCXj3oRlNC7T4eXJFzRs9NpXyHSU7RST0mSEQpK/lS8I4NDHHDqL0q2a/tngJKAqZs7idEVMJUiuADRUjzOFN/rpBquEwlw19gKH7OfFoTQFsIXgc+mTdSStXSznrkRn4vVvrTKf+oaWk= corp\\sudmadha@LIN-5CG4175RTR"
}
nic_name  = "opellanic"
context   = "dev"
state_rg_name =  "test-rg" 
statefie_st   =  "statest0145"
blob_name     =  "tfstate"
key           =  "terraform.tfstate"
