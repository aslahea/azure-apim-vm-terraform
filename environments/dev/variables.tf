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

# vm variables
variable "vm_name" {
  type        = string
  description = "Name of the virtual machine"
}
variable "vm_size" {
  type        = string
  description = "Size of the virtual machine"
}
variable "admin_username" {
  type        = string
  description = "Username of the virtual machine"
}
variable "public_key" {
  type        = string
  description = "Public key of the virtual machine"
}
variable "nic_name" {
  type        = string
  description = "Name of the network interface"
}
variable "public_ip_name" {
  type        = string
  description = "Name of the public IP address"
}

# apim variables
variable "apim_name" {
  type        = string
  description = "Name of the API management"
}

variable "publisher_name" {
  type        = string
  description = "Name of the publisher"
}

variable "publisher_email" {
  type        = string
  description = "Email of the publisher"
}

variable "sku_name" {
  type        = string
  description = "Name of the sku"
}
