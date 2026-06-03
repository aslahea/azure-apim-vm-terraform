# resource group variables
resource_group_name = "azure-apim-vm-terraform"
location            = "centralindia"
tags = {
  environment = "dev"
  project     = "azure-apim-vm"
  managed_by  = "terraform"
  owner       = "Aslah"
}

# network variables
vnet_name               = "vnet-apim-dev"
vnet_address_space      = ["10.0.0.0/16"]
subnet_name             = "subnet-app-dev"
subnet_address_prefixes = ["10.0.1.0/24"]
nsg_name                = "nsg-apim-dev"