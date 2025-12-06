//random resource
resource "random_string" "random_name" {
  length  = 6
  upper   = false
  special = false
  numeric = false
}