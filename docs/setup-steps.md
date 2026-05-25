# Setup Steps

This file documents the setup process for the Azure Hub-Spoke Secure Network Lab.

## 1. Project Goal

The goal of this project is to build a secure Azure network architecture using Terraform.

The project starts with a hub-spoke network design and will later include private VM access, NSG rules, Azure Bastion, and Private Endpoint.

## 2. Phase 1 Resources

Terraform created the first network layer:

- Resource Group
- Hub Virtual Network
- Hub Shared Subnet
- Spoke Virtual Network
- Spoke Workload Subnet
- Hub-to-Spoke VNet Peering
- Spoke-to-Hub VNet Peering

## 3. Created Resource Names

Resource Group:

`rg-hub-spoke-secure-network-zh6w4`

Hub VNet:

`vnet-hub-zh6w4`

Hub Shared Subnet:

`snet-hub-shared`

Spoke VNet:

`vnet-spoke-workload-zh6w4`

Spoke Workload Subnet:

`snet-spoke-workload`

## 4. Address Spaces

Hub VNet:

`10.0.0.0/16`

Hub Shared Subnet:

`10.0.1.0/24`

Spoke VNet:

`10.1.0.0/16`

Spoke Workload Subnet:

`10.1.1.0/24`

## 5. VNet Peering

Two VNet peerings were created:

- Hub to Spoke
- Spoke to Hub

This allows private network communication between the hub and spoke networks.

## 6. Why This Design Matters

The hub-spoke model is commonly used in cloud networking.

The hub network can hold shared services such as Bastion, Firewall, DNS, or monitoring.

The spoke network can hold application workloads while staying separated from shared infrastructure.

## 7. Current Status

Phase 1 is complete.

Next phase:

- Add private VM with no public IP
- Add Network Security Group rules
- Prepare secure access through Azure Bastion

## 8. Phase 2 - Private VM and NSG

Terraform added a private Linux virtual machine inside the spoke workload subnet.

Created resources:

- Private Linux VM
- Network interface
- Network Security Group
- NSG association

VM name:

`vm-private-spoke-zh6w4`

Private IP address:

`10.1.1.4`

NSG name:

`nsg-spoke-vm-zh6w4`

The VM was created without a public IP address. This means it is not directly reachable from the internet.

The NSG allows SSH only from the hub network range:

`10.0.0.0/16`

All other inbound traffic is denied.

This demonstrates a secure workload design where virtual machines stay private and access is controlled through network rules.

Next phase:

- Add Azure Bastion for secure browser-based SSH access
