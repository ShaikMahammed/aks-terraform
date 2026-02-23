resource "azurerm_kubernetes_cluster" "aks" {
  name = var.cluster_name
  location = var.location
  resource_group_name = var.rg_name
  dns_prefix = var.cluster_name
  default_node_pool {
    name = "default"
    vm_size = var.vm_size
    node_count = var.vm_node_count
    vnet_subnet_id = var.subnet_id
  }
  identity {
    type = "SystemAssigned"
  }
  network_profile {
  network_plugin    = "azure"
  service_cidr      = "172.16.0.0/16"
  dns_service_ip    = "172.16.0.10"
}
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive = true
}