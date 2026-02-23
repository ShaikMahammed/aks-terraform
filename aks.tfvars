rg_name = "aks-terraform-rg"
location = "eastus"
vnet_name = "AKS-vnet"
subnet_name = "web-subnet"
address_space = ["10.0.0.0/16"]
subnet_prefix = ["10.0.0.0/22"]
aks_cluster_name = "aks-01"
vm_node_count = 1
vm_size = "standard_dc4ads_v5"

