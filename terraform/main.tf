module "vnet" {
  source = "git::https://github.com/MadhaviSudina/modules-repo.git//modules/vnet?ref=main"
  # Pass required variables
  resource_group      = var.rg_name
  proj-shortname      = var.proj-shortname
  environment         = var.environment
  location            = var.loc
  vnet_address_spaces = var.add_space
  subnets             = var.subnets
}

module "vm" {
  source = "git::https://github.com/MadhaviSudina/modules-repo.git//modules/VM?ref=main"
  # Pass required variables
  proj-shortname         = var.proj-shortname
  environment            = var.environment
  location               = var.loc
  resource_group         = var.rg_name
  sku_name               = var.sku_vm
  os_disk                = var.os_disk
  source_image_reference = var.source_image_reference
  linux_configuration    = var.linux_configuration
  context                = var.context
  subnet_id              = module.vnet.subnets["subnet1"].id
}



module "storage" {
  source = "git::https://github.com/MadhaviSudina/modules-repo.git//modules/storage?ref=main"
  # Pass required variables
  proj-shortname                  = var.proj-shortname
  environment                     = var.environment
  location                        = var.loc
  resource_group                  = var.rg_name
  account_tier                    = var.acc_tier
  account_replication_type        = var.rep_type
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public
}

module "kv" {
  source = "git::https://github.com/MadhaviSudina/modules-repo.git//modules/keyvault?ref=main"
  # Pass required variables
  proj-shortname                         = var.proj-shortname
  environment                            = var.environment
  location                               = var.loc
  resource_group                         = var.rg_name
  sku_name                               = var.kv_sku
  enable_rbac_authorization              = var.enable_rbac_authorization
  public_network_access_enabled          = var.public_network_access_enabled
  soft_delete_retention_days             = var.soft_delete_retention_days
  purge_protection_enabled               = var.purge_protection_enabled
  network_acl_default_action             = var.network_acl_default_action
  network_acl_bypass                     = var.network_acl_bypass
  network_acl_virtual_network_subnet_ids = var.network_acl_virtual_network_subnet_ids
}
