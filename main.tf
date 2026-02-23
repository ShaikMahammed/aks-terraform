module "network"{
  source = "./modules/network"
  location = var.location
  rg_name = var.rg_name
  vnet_name = var.vnet_name
  subnet_name = var.subnet_name
  address_space= var.address_space
  subnet_prefix = var.subnet_prefix
}

module "aks" {
  source = "./modules/aks"
  rg_name = var.rg_name
  location = var.location
  cluster_name = var.aks_cluster_name
  vm_node_count = var.vm_node_count
  vm_size = var.vm_size
  subnet_id = module.network.subnet_id
}