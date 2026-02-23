variable "rg_name" {}
variable "location" {}
variable "vnet_name" {}
variable "subnet_name" {}
variable "address_space" {
  type = list(string)
}
variable "subnet_prefix" {
  type = list(string)
}
variable "aks_cluster_name"{}
variable "vm_node_count" {}
variable "vm_size" {}