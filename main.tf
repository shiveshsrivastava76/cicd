terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.2.0"
    }
  }
}

provider "azurerm" {
  features {

  }
}
variable "rgs" {

}
resource "azurerm_resource_group" "RG" {
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location

}

  