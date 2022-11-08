variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "resource_group_location" {
  type        = string
  description = "The location of the resource group"
}

variable "virtual_network_name" {
  type        = string 
  description = "The name of the Virtual Network"
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet"
}

variable "windows_virtual_machine_scale_set_name" {
  type        = string
  description = "The name of the Windows VM scale-set"
}

variable "sku" {
  type        = string
  description = "Sku type for Windows VM Scale-set" 
}

variable "instances" {
  type        = number
  description = "Number of instances"
}

variable "admin_password" {
  type        = string
  description = "Admin password"
}

variable "admin_username" {
  type        = string
  description = "Admin Password"
}

variable "source_image_reference_sku" {
  type        = string
  description = "The Sku for the source image 2012, 2016, 2019 datacenter server core"
}

variable "storage_account_type" {
  type        = string
  description = "Storage account type for OS disk"
}

variable "network_interface_name" {
  type        = string
  description = "The name for the NEtwork Interface"
}