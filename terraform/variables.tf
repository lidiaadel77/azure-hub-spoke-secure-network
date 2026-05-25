variable "location" {
  description = "Azure region allowed by the student subscription policy."
  type        = string
  default     = "francecentral"
}

variable "project_name" {
  description = "Base project name used for Azure resources."
  type        = string
  default     = "hub-spoke-secure-network"
}

variable "admin_username" {
  description = "Admin username for the private Linux VM."
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Path to the local SSH public key used for the Linux VM."
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}
