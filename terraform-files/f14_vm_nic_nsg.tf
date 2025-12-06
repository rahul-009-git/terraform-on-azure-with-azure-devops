/*
//create NSG for NIC
resource "azurerm_network_security_group" "vm_nic_nsg" {
  name                = "${azurerm_network_interface.vm_network_interface.name}-nsg"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

//associate NIC with NSG
resource "azurerm_network_interface_security_group_association" "NSG_for_NIC" {
  //depends_on                = [azurerm_network_security_rule.vm_nic_nsg_rules]
  network_interface_id      = azurerm_network_interface.vm_network_interface.id
  network_security_group_id = azurerm_network_security_group.vm_nic_nsg.id
}

//locals for NSG rules
locals {
  vm_nic_inbound_rules = {
    "100" : "80"
    "110" : "443"
    "120" : "22"
  }
}

resource "azurerm_network_security_rule" "vm_nic_nsg_rules" {
  for_each                    = local.vm_nic_inbound_rules
  name                        = "Rule-port-${each.value}"
  priority                    = each.key
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = each.value
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.vm_nic_nsg.name
}

*/