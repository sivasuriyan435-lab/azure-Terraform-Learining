terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "349dec6f-b78a-489d-9194-1a98daa5f725"
  features {}
}

