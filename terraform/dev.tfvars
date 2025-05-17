rg_name   = "opellarg"
loc       = "eastus"
vnet_name = "opella-d-eau-vnet"
add_space = ["10.0.0.0/20"]
subnets = {
  name             = "vm_subnet"
  address_prefixes = "10.0.1.0/29"
}
vm_name = "opella-d-linux-eau-vm"
sku_vm  = "Standard_B1s"
os_disk = "Standard HDD"
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
subnet_id = "10.0.1.0/29"
st_name   = "opelladeausta"
kv_name   = "opelladeauakv"
