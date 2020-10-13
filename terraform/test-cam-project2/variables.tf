#####################################################################
##
##      Created 10/12/20 by ucdpadmin for cloud ibmcloud. for test-cam-project2
##
#####################################################################

variable "vm_instance_domain" {
  type = "string"
  default = "ibm.com"
  description = "The domain for the computing instance."
}

variable "vm_instance_hostname" {
  type = "string"
  default = "host1"
  description = "The hostname for the computing instance."
}

variable "vm_instance_datacenter" {
  type = "string"
  default = "fra02"
  description = "The datacenter in which you want to provision the instance. NOTE: If dedicated_host_name or dedicated_host_id is provided then the datacenter should be same as the dedicated host datacenter."
}


variable "ibm_ssh_key_name" {
  type = "string"
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDRJ22dDkcLXQBjqQoBooPgw2mZA7qXAH86BG/b30tWD/DdTPmPhVKzFCtAhGHrmdg+TZofwWbgoxpi011lU5XjgfOLJQQ1iftHrhPJgmcPHmoKOgd4qwhlINOsz0tppkeaVYrrpLICVewp6dGx48jPaPUv47nODRnp92jXg63fm1VU4EQlqmZMsCRJgdBsjYviUbNc5PaJDb5Yfs8zw9qzrQmRkhM31ygmGEVW2OS3Cf4acAoFsOQ2iJcUKLigVsNO3VclxUN70SkE2zQsYmcSKKMw7ggwcnTOTeIxeVigXAJCKaR6745+CW9q4Ah0MiqnT85UzR1c6mLQk0BQg0M+iaBrVhvUSQUUdAliC1irWNnNJDT39DYH/49pnQ0RPIpI4KogxrS70UQmPQGY5FxrxR6tiEs7cQ4vNrSKcUJXnnbZ1eVdH6KpjXr0TzxRY6yMXiUU4qgF+M+zUf9nzAGx7X1tu6FZgm3gk+jx89ivyPiq17XjgGhqmYiuN0xKR0Y9jlDfxQ3bT/oNQcM3Y+l2/KvrRtVrywuplGPaCop0dL48x6b+ZScgzy3pkQsLmaJ7Lz4dursxaFEjJJ56xcMJTJbL+lJdhknUVZOv9H6GSY9SP+5LHtT0cr3AMlXRvBLR8es8jx5Jwsn0/QeTl2whLo4A5h3wE3XB667gz3VJ4w== hgrange@fr.ibm.com"
  description = "Generated"
}

variable "vm_instance_os_reference_code" {
  type = "string"
  description = "Generated"
  default     = "UBUNTU_16_64"
}





