#####################################################################
##
##      Created 10/12/20 by ucdpadmin for cloud ibmcloud. for test-cam-project2
##
#####################################################################

## REFERENCE {"ibm_network":{"type": "ibm_reference_network"}}

terraform {
  required_version = "> 0.8.0"
}

provider "ibm" {
  version = "~> 0.7"
}


resource "ibm_compute_vm_instance" "web-server" {
  cores       = 1
  memory      = 1024
  domain      = "${var.web-server_domain}"
  hostname    = "${var.web-server_hostname}"
  datacenter  = "${var.web-server_datacenter}"
  ssh_key_ids = ["${ibm_compute_ssh_key.auth.id}"]
  os_reference_code = "${var.web-server_os_reference_code}"
  private_vlan_id       = "${var.ibm_network_private_vlan_id}"
}

resource "ibm_compute_vm_instance" "db-server" {
  cores       = 1
  memory      = 1024
  domain      = "${var.db-server_domain}"
  hostname    = "${var.db-server_hostname}"
  datacenter  = "${var.db-server_datacenter}"
  ssh_key_ids = ["${ibm_compute_ssh_key.auth.id}"]
  os_reference_code = "${var.db-server_os_reference_code}"
  public_vlan_id       = "${var._public_vlan_id}"
  private_vlan_id       = "${var._private_vlan_id}"
}

resource "tls_private_key" "ssh" {
  algorithm = "RSA"
}

resource "ibm_compute_ssh_key" "auth" {
  label = "${var.ibm_ssh_key_name}"
  public_key = "${tls_private_key.ssh.public_key_openssh}"
}