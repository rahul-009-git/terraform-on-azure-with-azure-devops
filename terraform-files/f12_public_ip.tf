resource "azurerm_public_ip" "vm_public_ip" {
  name                = "${local.resource_name_prefix}-linuxvm-public-ip"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
  sku                 = "Standard"
  domain_name_label   = "app1-vm-label"
}