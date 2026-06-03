module "resource_group" {
  source              = "../../modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "network" {
  source                  = "../../modules/network"
  resource_group_name     = module.resource_group.rg_name
  location                = var.location
  vnet_name               = var.vnet_name
  vnet_address_space      = var.vnet_address_space
  subnet_name             = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
  nsg_name                = var.nsg_name
  tags                    = var.tags
}

module "vm" {
  source = "../../modules/vm"

  resource_group_name = module.resource_group.rg_name
  location            = var.location
  subnet_id           = module.network.subnet_id

  vm_name        = var.vm_name
  vm_size        = var.vm_size
  admin_username = var.admin_username
  public_key     = var.public_key
  nic_name       = var.nic_name
  public_ip_name = var.public_ip_name
  tags           = var.tags
}

module "apim" {
  source              = "../../modules/apim"
  resource_group_name = module.resource_group.rg_name
  location            = var.location
  apim_name           = var.apim_name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  sku_name            = var.sku_name
  tags                = var.tags
}
