# This is a terraform generated template generated from blueprint89

##############################################################
# Keys - CAMC (public/private) & optional User Key (public) 
##############################################################
variable "allow_unverified_ssl" {
  description = "Communication with vsphere server with self signed certificate"
  default     = "true"
}

##############################################################
# Define the vsphere provider 
##############################################################
provider "vsphere" {
  allow_unverified_ssl = var.allow_unverified_ssl
  version              = "~> 1.3"
}

provider "camc" {
  version = "~> 0.2"
}

##############################################################
# Define pattern variables 
##############################################################

##############################################################
# Vsphere data for provider
##############################################################
data "vsphere_datacenter" "vm_1_datacenter" {
  name = var.vm_1_datacenter
}

data "vsphere_datastore" "vm_1_datastore" {
  name          = var.vm_1_root_disk_datastore
  datacenter_id = data.vsphere_datacenter.vm_1_datacenter.id
  default       = "ssd-010919"
}

data "vsphere_compute_cluster" "cluster" {
  name          = var.vm_1_cluster
  datacenter_id = data.vsphere_datacenter.vm_1_datacenter.id
  default     = "Cluster1"
}

data "vsphere_network" "vm_1_network" {
  name          = var.vm_1_network_interface_label
  datacenter_id = data.vsphere_datacenter.vm_1_datacenter.id
}

data "vsphere_virtual_machine" "vm_1_template" {
  name          = var.vm_1-image
  datacenter_id = data.vsphere_datacenter.vm_1_datacenter.id
}

##### Image Parameters variables #####

#Variable : vm_1_name
variable "vm_1_name" {
  type        = string
  description = "Generated"
  default     = "testHerve"
}

#########################################################
##### Resource : vm_1
#########################################################

variable "vm_1_folder" {
  description = "Target vSphere folder for virtual machine"
}

variable "vm_1_datacenter" {
  description = "Target vSphere datacenter for virtual machine creation"
  default     = "pcc-92-222-223-31_datacenter3394"
}

variable "vm_1_domain" {
  description = "Domain Name of virtual machine"
  default    = "test.internal"
}

variable "vm_1_number_of_vcpu" {
  description = "Number of virtual CPU for the virtual machine, which is required to be a positive Integer"
  default     = "1"
}

variable "vm_1_memory" {
  description = "Memory assigned to the virtual machine in megabytes. This value is required to be an increment of 1024"
  default     = "1024"
}

variable "vm_1_cluster" {
  description = "Target vSphere cluster to host the virtual machine"
}

variable "vm_1_network_interface_label" {
  description = "vSphere port group or network label for virtual machine's vNIC"
}

variable "vm_1_adapter_type" {
  description = "Network adapter type for vNIC Configuration"
  default     = "vmxnet3"
}

variable "vm_1_root_disk_datastore" {
  description = "Data store or storage cluster name for target virtual machine's disks"
  default     = "ssd-010919"
}

variable "vm_1_root_disk_type" {
  type        = string
  description = "Type of template disk volume"
  default     = "eager_zeroed"
}

variable "vm_1_root_disk_controller_type" {
  type        = string
  description = "Type of template disk controller"
  default     = "scsi"
}

variable "vm_1_root_disk_keep_on_remove" {
  type        = string
  description = "Delete template disk volume when the virtual machine is deleted"
  default     = "false"
}

variable "vm_1_root_disk_size" {
  description = "Size of template disk volume. Should be equal to template's disk size"
  default     = "20"
}

variable "vm_1-image" {
  description = "Operating system image id / template that should be used when creating the virtual image"
  default     = "TestcloneIBM"
}

variable "vm_1_network_interface_label" {
  description = "Network"
  default     = "vxw-dvs-38-virtualwire-2-sid-5001-Dc3394_5001"
}

variable "vm_1_ipv4_address" {
  type        = string
  description = "Ip Address"
  default     = "10.0.0.2"
}
variable "vm_1_netmask" {
  type        = string
  description = "Netmask"
  default     = "24"
}
variable "vm_1_ipv4_gateway" {
  type        = string
  description = "Gateway"
  default     = "10.0.0.1"
}
# vsphere vm
resource "vsphere_virtual_machine" "vm_1" {
  name             = var.vm_1_name
  folder           = var.vm_1_folder
  num_cpus         = var.vm_1_number_of_vcpu
  memory           = var.vm_1_memory
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.vm_1_datastore.id
  guest_id         = data.vsphere_virtual_machine.vm_1_template.guest_id
  scsi_type        = data.vsphere_virtual_machine.vm_1_template.scsi_type

  clone {
    template_uuid = data.vsphere_virtual_machine.vm_1_template.id

    customize {
      linux_options {
        domain    = var.vm_1_domain
        host_name = var.vm_1_name
      }

      network_interface {
        ipv4_address = var.vm_1_ipv4_address
        ipv4_netmask = var.vm_1_netmask
      }

      ipv4_gateway    = var.vm_1_ipv4_gateway
    }
  }

  network_interface {
    network_id   = data.vsphere_network.vm_1_network.id
    adapter_type = var.vm_1_adapter_type
  }

  disk {
    label          = "${var.vm_1_name}0.vmdk"
    size           = var.vm_1_root_disk_size
    keep_on_remove = var.vm_1_root_disk_keep_on_remove
    datastore_id   = data.vsphere_datastore.vm_1_datastore.id
  }
}
