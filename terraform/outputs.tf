output "resource_group_name" {
  description = "Name of the created resource group."
  value       = azurerm_resource_group.main.name
}

output "hub_vnet_name" {
  description = "Name of the hub virtual network."
  value       = azurerm_virtual_network.hub.name
}

output "spoke_vnet_name" {
  description = "Name of the spoke virtual network."
  value       = azurerm_virtual_network.spoke.name
}

output "hub_shared_subnet_name" {
  description = "Name of the hub shared subnet."
  value       = azurerm_subnet.hub_shared.name
}

output "spoke_workload_subnet_name" {
  description = "Name of the spoke workload subnet."
  value       = azurerm_subnet.spoke_workload.name
}

output "private_vm_name" {
  description = "Name of the private Linux VM in the spoke subnet."
  value       = azurerm_linux_virtual_machine.private_vm.name
}

output "private_vm_private_ip" {
  description = "Private IP address of the VM."
  value       = azurerm_network_interface.private_vm.private_ip_address
}

output "spoke_vm_nsg_name" {
  description = "Name of the NSG attached to the private VM NIC."
  value       = azurerm_network_security_group.spoke_vm.name
}
