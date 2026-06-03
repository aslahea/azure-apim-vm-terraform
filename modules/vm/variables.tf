variable "resource_group_name" {
    type = string
    description = "Name of the resource group"
}
variable "location" {
    type = string
    description = "Location of the resource group"
}

variable "vm_name" {
    type = string
    description = "Name of the virtual machine"
}
variable "vm_size" {
    type = string
    description = "Size of the virtual machine"
}

variable "admin_username" {
    type = string
    description = "Username of the virtual machine"
}
variable "public_key" {
    type = string
    description = "Public key of the virtual machine"
}

variable "subnet_id" {
    type = string
    description = "ID of the subnet"
}

variable "nic_name" {
    type = string
    description = "Name of the network interface"
}
variable "public_ip_name" {
    type = string
    description = "Name of the public IP address"
}

variable "tags" {
    type = map(string)
    description = "Tags to be applied to the virtual machine"
}