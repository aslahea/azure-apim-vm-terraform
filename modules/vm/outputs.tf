output "vm_id" {
    value = azurerm_linux_virtual_machine.vm.id
}
output "vm_name" {
    value = azurerm_linux_virtual_machine.vm.name
}
output "public_ip" {
    value = azurerm_public_ip.vm_public_ip.ip_address
}
output "private_ip" {
    value = azurerm_network_interface.vm_nic.private_ip_address
}