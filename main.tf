provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_name" {
 name     = var.resource_group_name
 location = var.resource_group_location 
}

resource "azurerm_virtual_network" "VNet_name" {
 name                = var.virtual_network_name
 resource_group_name = var.resource_group_name
 location            = var.resource_group_location
 address_space       = ["10.0.0.0/16"]
}