//local values
locals {
  owners               = var.business_division
  environemnt          = var.environment_variable
  resource_name_prefix = "${var.business_division}-${var.environment_variable}"
  common_tags = {
    owners      = local.owners
    environemnt = local.environemnt
  }
  

}