#####################################################################
##
##      Created 10/12/20 by ucdpadmin for cloud ibmcloud. for test-cam-project2
##
#####################################################################

variable "web-server_domain" {
  type = "string"
  description = "The domain for the computing instance."
}

variable "web-server_hostname" {
  type = "string"
  description = "The hostname for the computing instance."
}

variable "web-server_datacenter" {
  type = "string"
  description = "The datacenter in which you want to provision the instance. NOTE: If dedicated_host_name or dedicated_host_id is provided then the datacenter should be same as the dedicated host datacenter."
}

variable "web-server_os_reference_code" {
  type = "string"
  description = "Generated"
}

variable "ibm_ssh_key_name" {
  type = "string"
  description = "Generated"
}

variable "ibm_network_private_vlan_id" {
  type = "string"
  description = "Generated"
}

variable "db-server_domain" {
  type = "string"
  description = "The domain for the computing instance."
}

variable "db-server_hostname" {
  type = "string"
  description = "The hostname for the computing instance."
}

variable "db-server_datacenter" {
  type = "string"
  description = "The datacenter in which you want to provision the instance. NOTE: If dedicated_host_name or dedicated_host_id is provided then the datacenter should be same as the dedicated host datacenter."
}

variable "db-server_os_reference_code" {
  type = "string"
  description = "Generated"
}

variable "_public_vlan_id" {
  type = "string"
  description = "Generated"
}

variable "_private_vlan_id" {
  type = "string"
  description = "Generated"
}

