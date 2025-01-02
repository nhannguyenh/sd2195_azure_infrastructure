resource "azurerm_container_registry" "sd2195_arc" {
  resource_group_name = data.azurerm_resource_group.sd2195_rg.name
  name                = "nhannguyenarc"
  location            = data.azurerm_resource_group.sd2195_rg.location
  sku                 = "Basic"
}