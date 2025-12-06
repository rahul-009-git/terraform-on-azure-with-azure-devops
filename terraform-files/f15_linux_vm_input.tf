//Linux VM Input variables 
variable "web_linux_VM_size" {
  description = "Web Linux VM size"
  type = string
  default = "Standard_D2s_v3"
}

variable "web_linux_vm_admin_user" {
  description = "VM user name"
  type = string
  default = "azureuser"
}