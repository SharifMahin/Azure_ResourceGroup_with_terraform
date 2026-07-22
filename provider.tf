terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  # not needed as az_cli login
  # subscription_id = ""
  # tenant_id       = ""
  # client_id       = ""
  # client_secret   = ""
  features {}
}