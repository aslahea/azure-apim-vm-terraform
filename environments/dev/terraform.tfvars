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

# vm variables
vm_name        = "vm-apim-dev"
vm_size        = "Standard_D2s_v3"
admin_username = "aslah"
nic_name       = "nic-apim-dev"
public_ip_name = "pip-apim-dev"
public_key     = "~/.ssh/id_rsa.pub"

# apim variables
apim_name       = "apim-dev-aslah"
publisher_name  = "Aslah"
publisher_email = "aslahea68@gmail.com"
sku_name        = "Developer_1"

# cosmosdb variables
cosmos_account_name   = "cosmos-dev-aslah"
cosmos_database_name  = "app-db"
cosmos_container_name = "users"