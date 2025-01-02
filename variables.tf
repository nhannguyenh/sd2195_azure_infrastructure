variable "address_space" {
  type        = string
  description = "The address space that is used the virtual network"
}

variable "subnet_address_prefix" {
  type        = list(string)
  description = "The address prefixes to use for the subnet"
}

variable "dns_service_ip" {
  type = string
  description = "The IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns)"
}

variable "aks_version" {
  type        = string
  description = "The version of EKS cluster"
}

variable "node_count" {
  type = number
  description = "The initial number of nodes which should exist in this Node Pool"
}

variable "vm_size" {
  type = string
  description = "The size of the Virtual Machine"
}