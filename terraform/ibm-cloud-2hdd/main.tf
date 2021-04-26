terraform {
  required_version = "> 0.8.0"
}

provider "ibm" {
  version = "~> 0.7"
}

provider "tls" {  
  version = "~> 2.0"
}

resource "ibm_compute_vm_instance" "server1" {
  cores       = 1
  memory      = 1024
  domain      = "${var.vm_server1_domain}"
  hostname    = "${var.vm_server1_hostname}"
  datacenter  = "${var.vm_server1_datacenter}"
  ssh_key_ids = ["${ibm_compute_ssh_key.auth.id}"]
  os_reference_code = "${var.vm_webserver_os_reference_code}"
  hourly_billing = true
  public_vlan_id       = "${var.ibm_network_public_vlan_id}"
  private_vlan_id       = "${var.ibm_network_private_vlan_id}"
  disks = "[${var.vm_server1_disks}]"
}

resource "tls_private_key" "ssh" {
  algorithm = "RSA"
}

resource "ibm_compute_ssh_key" "auth" {
  label = "CAM Public Key"
  public_key = "${var.ibm_ssh_key_name}"
}
