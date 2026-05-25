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
