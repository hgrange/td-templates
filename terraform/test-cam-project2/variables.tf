#####################################################################
##
##      Created 10/12/20 by ucdpadmin for cloud ibmcloud. for test-cam-project2
##
#####################################################################

variable "vm_instance_domain" {
  type = "string"
  description = "The domain for the computing instance."
}

variable "vm_instance_hostname" {
  type = "string"
  description = "The hostname for the computing instance."
}

variable "vm_instance_datacenter" {
  type = "string"
  description = "The datacenter in which you want to provision the instance. NOTE: If dedicated_host_name or dedicated_host_id is provided then the datacenter should be same as the dedicated host datacenter."
}

variable "vm_instance_image_id" {
  type = "string"
  description = "Generated"
}

variable "ibm_ssh_key_name" {
  type = "string"
  description = "Generated"
}

