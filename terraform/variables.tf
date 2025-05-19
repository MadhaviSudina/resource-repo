variable "rg_name" {
  type        = string
  description = "The name of the resource group in which to deploy."
}

variable "loc" {
  type        = string
  description = "The name of the location in which to deploy."
}


variable "add_space" {
  type        = list(string)
  description = "The adress spaces to utilise in the vnet"
}

variable "subnets" {
  type = map(object({
    name                                          = string
    address_prefixes                              = list(string)
    private_link_service_network_policies_enabled = optional(bool, true)
  }))
  default     = {}
  description = "The subnet specifications"
}



variable "sku_vm" {
  type        = string
  description = "The name of the SKU to be used by this Virtual Machine Scale Set"
}

variable "os_disk" {
  type = object({
    caching              = string
    storage_account_type = string
  })
  description = "The OS disk properties."
}

variable "source_image_reference" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  description = "Reference to the source image"
}

variable "linux_configuration" {
  type = object({
    admin_username = string
    public_key     = string
  })
}

variable "context" {
  type        = string
  description = "(Required) The contextual identifier which should be used for this resource. Changing this forces a new resource to be created."
}
variable "acc_tier" {
  type    = string
  default = "Standard"
}

variable "rep_type" {
  type    = string
  default = "GRS"
}

variable "allow_nested_items_to_be_public" {
  type        = bool
  default     = false
  description = "allow_blob_public_access - defaults to false"
}

variable "proj-shortname" {
  type        = string
  description = "The proj name to deploy."
}

variable "environment" {
  type        = string
  description = "The  name of the env to deploy."
}


variable "kv_sku" {
  type        = string
  description = "The name of the SKU for the key vault. Possible values are standard and premium."
  default     = "standard"
}

variable "enable_rbac_authorization" {
  type        = bool
  default     = true
  description = "(Optional) Use RBAC access control for the key vault. Defaults to true"
}

variable "public_network_access_enabled" {
  type        = bool
  default     = null
  description = "(Optional) Boolean flag to specify whether the key vault is reachable without a private endpoint."
}

variable "network_acl_bypass" {
  type        = string
  default     = "None"
  description = "Specifies which traffic can bypass the network rules. Possible values are AzureServices and None"
}

variable "network_acl_default_action" {
  type        = string
  default     = "Deny"
  description = "The Default Action to use when no rules match from network_acl_ip_rules / network_acl_virtual_network_subnet_ids. Possible values are Allow and Deny"
}

variable "soft_delete_retention_days" {
  type        = number
  default     = 7
  description = "The number of days to retain deleted objects, must be between 7 and 90 days."
}

variable "purge_protection_enabled" {
  type        = bool
  description = "Should the key vault be purge protected. NB! Can not remove purge protection after being enabled."
  default     = false
}

variable "network_acl_virtual_network_subnet_ids" {
  type        = list(string)
  default     = []
  description = "The list of allowed subnet ids"
}





