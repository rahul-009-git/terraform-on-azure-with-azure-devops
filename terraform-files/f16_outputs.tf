//public IP
output "weblinux_vm_public_ip" {
  description = "web linux public IP"
  value       = azurerm_public_ip.vm_public_ip.ip_address
}

//newtork interface outputs
//Network interface ID
output "weblinux_vm_network_interface_id" {
  description = "web linux VM NIC id"
  value       = azurerm_network_interface.vm_network_interface.id
}

//NIC private IP addresses
output "weblinux_vm_NIC_private_IPs" {
  description = "web linux VM private IPs"
  value       = [azurerm_network_interface.vm_network_interface.private_ip_address]
}

//linux VM outputs
output "web_linux_vm_private_ip" {
  description = "web linux VM private IP"
  value       = azurerm_linux_virtual_machine.web_linux_vm.private_ip_address
}

//VM 128 bit ID
output "weblinux_vm_128bit_id" {
  description = "web linux VM - 128 bit ID"
  value       = azurerm_linux_virtual_machine.web_linux_vm.virtual_machine_id
}

//VM ID
output "weblinux_vm_id" {
  description = "web linux VM ID"
  value       = azurerm_linux_virtual_machine.web_linux_vm.id
}