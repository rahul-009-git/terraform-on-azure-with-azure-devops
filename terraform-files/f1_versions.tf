terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">=3.0"
    }
  }
  backend "azurerm" {
    
  }
}

provider "azurerm" {
  features {

  }
  subscription_id = "7caf822d-bc7b-4a80-99ca-122918a7c090"
}

//Adding simple comment for testing