#####################################################################
##
##      Created 10/12/20 by ucdpadmin for cloud ibmcloud. for test
##
#####################################################################

terraform {
  required_version = "> 0.8.0"
}

provider "ibm" {
  version = "~> 0.7"
}


resource "ibm_compute_vm_instance" "test" {
  cores       = 1
  memory      = 1024
  domain      = "${var.test_domain}"
  hostname    = "${var.test_hostname}"
  datacenter  = "${var.test_datacenter}"
  ssh_key_ids = ["${ibm_compute_ssh_key.auth.id}"]
  os_reference_code = "${var.test_os_reference_code}"
  connection {
    type = "ssh"
    user = "${var.test_connection_user}"
    password = "${var.test_connection_password}"
  }
}

resource "tls_private_key" "ssh" {
  algorithm = "RSA"
}

resource "ibm_compute_ssh_key" "auth" {
  label = "${var.ibm_ssh_key_name}"
  public_key = "${tls_private_key.ssh.public_key_openssh}"
}