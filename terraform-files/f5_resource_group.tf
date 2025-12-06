//resource group
resource "azurerm_resource_group" "rg" {
  location = var.resurce_group_location
  name     = "${local.resource_name_prefix}-${var.resurce_group_name}-${random_string.random_name.id}"
  //tags     = local.common_tags
}