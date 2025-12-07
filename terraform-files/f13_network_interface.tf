
resource "azurerm_network_interface" "vm_network_interface_new" {
  name                = "${local.resource_name_prefix}-linux-vm-nic-new"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  
  lifecycle {
    create_before_destroy = true
  }
  
  ip_configuration {
    name                          = "linuxvm-ip-1"
    subnet_id                     = azurerm_subnet.web_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.linux_vm_public_ip_new.id
  }
}