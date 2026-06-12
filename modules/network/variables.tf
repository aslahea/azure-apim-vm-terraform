variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Location of the resource group"
}

variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space of the virtual network"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "Address prefixes of the subnet"
}

variable "nsg_name" {
  type        = string
  description = "Name of the network security group"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the resources"
}

variable "apim_subnet_name" {
  type        = string
  description = "Name of the APIM subnet"
}

variable "apim_subnet_address_prefixes" {
  type        = list(string)
  description = "Address prefixes of the APIM subnet"
}