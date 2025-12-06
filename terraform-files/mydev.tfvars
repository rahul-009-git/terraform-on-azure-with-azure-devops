//Environment variables
environment_variable = "dev"

//Virtual network variabls
vnet_name = "vnet"
vnet_address_space = [ "10.1.0.0/16" ]

web_subnet_name = "web-subent"
web_subnet_address = [ "10.1.1.0/24" ]

app_subnet_name = "app-subnet"
app_subnet_address = [ "10.1.11.0/24" ]

bastion_subnet_name = "bastion-subnet"
bastion_subnet_address = [ "10.1.21.0/24" ]

database_subnet_name = "db-subent"
database_subnet_address = [ "10.1.100.0/24" ]

//VM variables
web_linux_VM_size = "Standard_D2s_v3"
web_linux_vm_admin_user = "azureuser"