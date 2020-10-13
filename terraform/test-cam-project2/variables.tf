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
  description = "Generated"
}

variable "vm_instance_os_reference_code" {
  type = "string"
  description = "Generated"
  default     = "UBUNTU_16_64"
}

