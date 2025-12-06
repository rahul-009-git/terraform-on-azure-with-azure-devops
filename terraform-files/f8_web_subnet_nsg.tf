//create web subnet
resource "azurerm_subnet" "web_subnet" {
  name                 = "${azurerm_virtual_network.vnet1.name}-${var.web_subnet_name}"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = var.web_subnet_address
}

//create NSG
resource "azurerm_network_security_group" "web_subnet_nsg" {
  name                = "${azurerm_subnet.web_subnet.name}-nsg"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

//Associate NSG and subnet
resource "azurerm_subnet_network_security_group_association" "web_subnet_nsg_association" {
  //depends_on                = [azurerm_network_security_rule.web_nsg_rule_inbound]
  subnet_id                 = azurerm_subnet.web_subnet.id
  network_security_group_id = azurerm_network_security_group.web_subnet_nsg.id
}

//locals for security rules
locals {

  web_inbound_ports_map = {
    "100" : "80", //if the key starts with a number, you must use ":" not "="
    "110" : "443",
    "120" : "22"
  }
}

//Create NSG rules - 80, 443, 8080, 8081, 9090, 9091
resource "azurerm_network_security_rule" "web_nsg_rule_inbound" {
  for_each                    = local.web_inbound_ports_map
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
  network_security_group_name = azurerm_network_security_group.web_subnet_nsg.name
}