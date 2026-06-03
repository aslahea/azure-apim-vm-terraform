#resource group variables
variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Location of the resource group"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the resource group"
}

# network variables
variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "nsg_name" {
  type        = string
  description = "Name of the network security group"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space of the virtual network"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "Address prefixes of the subnet"
}