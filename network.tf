resource "azurerm_virtual_network" "sd2195_vnet" {
  name                = "sd2195_vnet"
  address_space       = [var.address_space]
  location            = data.azurerm_resource_group.sd2195_rg.location
  resource_group_name = data.azurerm_resource_group.sd2195_rg.name
}

resource "azurerm_subnet" "sd2195_subnet" {
  name                 = "sd2195_subnet"
  resource_group_name  = data.azurerm_resource_group.sd2195_rg.name
  virtual_network_name = azurerm_virtual_network.sd2195_vnet.name
  address_prefixes     = var.subnet_address_prefix
}