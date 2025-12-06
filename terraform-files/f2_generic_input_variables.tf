//Business Division
variable "business_division" {
  default     = "sap"
  description = "business division variable"
  type        = string
}

///Environment variable

variable "environment_variable" {
  type        = string
  description = "environemnt variable"
  default     = "dev"
}


//RG name
variable "resurce_group_name" {
  type        = string
  default     = "rg-default"
  description = "RG name"
}

//RG location
variable "resurce_group_location" {
  type        = string
  default     = "east US"
  description = "RG location"
}