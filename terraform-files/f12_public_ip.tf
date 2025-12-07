resource "azurerm_public_ip" "linux_vm_public_ip_new" {
  name                = "${local.resource_name_prefix}-linux-vm-public-ip-new"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
  sku                 = "Standard"
 // domain_name_label   = "app1-vm-label"
  

}