#####################################################################
##
##      Created 10/12/20 by ucdpadmin for cloud ibmcloud. for test-cam-project2
##
#####################################################################

output "IP_address_VM" {
  value = "${ibm_compute_vm_instance.vm_instance.ipv4_address}"
}
output "private_subnet_id" {
  value = "${ibm_compute_vm_instance.vm_instance.private_subnet_id}"
}
output "public_subnet_id" {
  value = "${ibm_compute_vm_instance.vm_instance.public_subnet_id}"
}
output "TestSecureField" {
  value = "${var.testsecurefield}"
}