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

resource "azurerm_subnet" "Subnet_name" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = ["10.0.0.0/24"]
}

resource "azurerm_windows_virtual_machine_scale_set" "VMSS_name" {
  name                = var.windows_virtual_machine_scale_set_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  sku                 = var.sku
  instances           = var.instances
  admin_password      = var.admin_password
  admin_username      = var.admin_username

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = var.source_image_reference_sku
    version   = "latest"
  }

  os_disk {
    storage_account_type = var.storage_account_type
    caching              = "ReadWrite"
  }

  network_interface {
    name = var.network_interface_name
    primary = true

    ip_configuration {
      name = var.subnet_name
      primary = true
      subnet_id = var.subnet_name_id
    }
  }
}