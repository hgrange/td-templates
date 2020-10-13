#####################################################################
##
##      Created 10/12/20 by ucdpadmin for cloud ibmcloud. for test-cam-project2
##
#####################################################################

output "IP_address_VM" {
  value = "${ibm_compute_vm_instance.webserver.ipv4_address}"
}
output "TestSecureField" {
  value = "${var.testsecurefield}"
}