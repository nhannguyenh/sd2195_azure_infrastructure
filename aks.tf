resource "azurerm_kubernetes_cluster" "sd2195_aks" {
  name                = "sd2195_aks"
  location            = data.azurerm_resource_group.sd2195_rg.location
  resource_group_name = data.azurerm_resource_group.sd2195_rg.name
  dns_prefix          = "sd2195dns"
  kubernetes_version  = var.aks_version

  default_node_pool {
    name           = "sd2195dfnp"
    node_count     = var.node_count
    vm_size        = var.vm_size
  }

  network_profile {
    network_plugin = "azure"
    service_cidr   = var.subnet_address_prefix[0]
    dns_service_ip = var.dns_service_ip
  }

  identity {
    type = "SystemAssigned"
  }

  depends_on = [ azurerm_subnet.sd2195_subnet ]
}