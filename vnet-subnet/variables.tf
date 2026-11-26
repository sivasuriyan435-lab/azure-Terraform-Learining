variable "rg_name" {
  type        = string
  description = "Resource Group Name"
}

variable "location" {
  type        = string
  description = "Azure Region"
}

variable "vnet_name" {
  type        = string
  description = "Virtual Network Name"
}

variable "address_space" {
  type        = list(string)
  description = "Virtual Network Address Space"
}

variable "web_subnet_name" {
  type        = string
  description = "Web Subnet Name"
}

variable "web_subnet_prefix" {
  type        = list(string)
  description = "Web Subnet CIDR Prefix"
}

variable "app_subnet_name" {
  type        = string
  description = "App Subnet Name"
}

variable "app_subnet_prefix" {
  type        = list(string)
  description = "App Subnet CIDR Prefix"
}

variable "db_subnet_name" {
  type        = string
  description = "Database Subnet Name"
}

variable "db_subnet_prefix" {
  type        = list(string)
  description = "Database Subnet CIDR Prefix"
}
