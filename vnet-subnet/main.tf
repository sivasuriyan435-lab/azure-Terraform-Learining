resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.address_space

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_subnet" "web" {
  name                 = var.web_subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.web_subnet_prefix

  lifecycle {
    ignore_changes = [
      address_prefixes,
    ]
  }
}

resource "azurerm_subnet" "app" {
  name                 = var.app_subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.app_subnet_prefix

  lifecycle {
    ignore_changes = [
      address_prefixes,
    ]
  }
}

resource "azurerm_subnet" "db" {
  name                 = var.db_subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.db_subnet_prefix

  lifecycle {
    create_before_destroy = true
  }
}

