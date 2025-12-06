//create virtual network
resource "azurerm_virtual_network" "vnet1" {
  name                = "${local.resource_name_prefix}-${var.vnet_name}"
  location            = var.resurce_group_location
  address_space       = var.vnet_address_space
  resource_group_name = azurerm_resource_group.rg.name
  tags                = local.common_tags
}