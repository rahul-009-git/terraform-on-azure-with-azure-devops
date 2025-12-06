//Virtual network outputs
//virtual network name

output "Vnet_name" {
  description = "Virtual network name"
  value       = azurerm_virtual_network.vnet1.name
}

//virtual network id
output "Vnet_id" {
  description = "Virtual network id"
  value       = azurerm_virtual_network.vnet1.id
}

//Subnet outputs
//Web Subnet Name
output "web_subnet_name" {
  description = "web subnet name"
  value       = azurerm_subnet.web_subnet.name
}

//Web Subnet ID
output "web_subnet_id" {
  description = "web subnet id"
  value       = azurerm_subnet.web_subnet.id
}

//NSG outputs
//web NSG Name
output "web_subnet_nsg_name" {
  description = "web subnet NSG name"
  value       = azurerm_network_security_group.web_subnet_nsg.name
}

//Web Subnet NSG ID
output "web_subnet_nsg_id" {
  description = "web subnet NSG id"
  value       = azurerm_network_security_group.web_subnet_nsg.id
}