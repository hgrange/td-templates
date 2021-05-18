#####################################################################
##
##      Created 10/12/20 by ucdpadmin for cloud ibmcloud. for test-cam-project2
##
#####################################################################

output "IP_address_server1" {
  value = "${ibm_compute_vm_instance.server1.ipv4_address}"
}
output "IP_address2_server1" {
  value = "${ibm_compute_vm_instance.server1.ipv4_address_private}"
}
output "IP_address_server2" {
  value = "${ibm_compute_vm_instance.server2.ipv4_address}"
}
output "IP_address2_server2" {
  value = "${ibm_compute_vm_instance.server2.ipv4_address_private}"
}
output "IP_address_server3" {
  value = "${ibm_compute_vm_instance.server3.ipv4_address}"
}
output "IP_address2_server3" {
  value = "${ibm_compute_vm_instance.server3.ipv4_address_private}"
}
#output "IP_adresses_secondary" {
#  value = "${ibm_compute_vm_instance.server1.secondary_ip_addresses}"
#}
output "IP_adresses_secondary" {
  value = "${ibm_compute_vm_instance.server1.secondary_ip_addresses[0]}"
}
output "TestSecureField" {
  value = "${var.testsecurefield}"
}
