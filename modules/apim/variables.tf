variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}
variable "location" {
  type        = string
  description = "Location of the resource group"
}

variable "apim_name"{
  type        = string
  description = "Name of the apim"
}

variable "publisher_name"{
  type        = string
  description = "Name of the publisher"
}

variable "publisher_email"{
  type        = string
  description = "Email of the publisher"
}

variable "sku_name"{
  type        = string
  description = "Name of the sku"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the resource group"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet"
}

variable "vm_public_ip" {
  type        = string
  description = "The public IP address of the backend VM"
}