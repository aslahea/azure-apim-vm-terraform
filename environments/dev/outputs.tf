output "resource_group_name" {
  value       = module.resource_group.rg_name
  description = "The name of the resource group"
}

output "resource_group_id" {
  value       = module.resource_group.rg_id
  description = "The ID of the resource group"
}

output "vnet_id" {
  value       = module.network.vnet_id
  description = "The ID of the virtual network"
}

output "subnet_id" {
  value       = module.network.subnet_id
  description = "The ID of the subnet"
}

output "nsg_id" {
  value       = module.network.nsg_id
  description = "The ID of the network security group"
}

output "vm_id" {
  value       = module.vm.vm_id
  description = "The ID of the virtual machine"
}

output "vm_name" {
  value       = module.vm.vm_name
  description = "The name of the virtual machine"
}

output "vm_public_ip" {
  value       = module.vm.public_ip
  description = "The public IP address of the virtual machine"
}

output "vm_private_ip" {
  value       = module.vm.private_ip
  description = "The private IP address of the virtual machine"
}
