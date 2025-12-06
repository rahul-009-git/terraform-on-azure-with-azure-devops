//Virtual Network, Subnets and Subnet NSG's

//Vnet
variable "vnet_name" {
  type        = string
  description = "Vnet name"
  default     = "vnet-default"
}

//Vnet address space
variable "vnet_address_space" {
  description = "vnet address space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

//web subnet name
variable "web_subnet_name" {
  description = "virtual network web subnet name"
  type        = string
  default     = "websubnet"
}

//web subnet address space
variable "web_subnet_address" {
  description = "virtual network web subnet address space"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}


//App subnet name
variable "app_subnet_name" {
  description = "virtual network app subnet name"
  type        = string
  default     = "appsubnet"
}

//App subnet address space
variable "app_subnet_address" {
  description = "virtual network app subnet address space"
  type        = list(string)
  default     = ["10.0.11.0/24"]
}

//Database subnet name
variable "database_subnet_name" {
  description = "virtual network database subnet name"
  type        = string
  default     = "databasesubnet"
}

//Database subnet address space
variable "database_subnet_address" {
  description = "virtual network database subnet address space"
  type        = list(string)
  default     = ["10.0.21.0/24"]
}

//Bastion/management subnet name
variable "bastion_subnet_name" {
  description = "virtual network Bastion subnet name"
  type        = string
  default     = "bastionsubnet"
}

//web subnet address space
variable "bastion_subnet_address" {
  description = "virtual network Bastion subnet address space"
  type        = list(string)
  default     = ["10.0.100.0/24"]
}