
resource "azurerm_network_interface" "vm_network_interface" {
  name                = "${local.resource_name_prefix}-vm-nic"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  ip_configuration {
    name                          = "linuxvm-ip-1"
    subnet_id                     = azurerm_subnet.web_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.linux_vm_public_ip.id
  }
}