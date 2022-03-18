variable "quantity" {
  default     = 1
  description = "Number of basic instances to start"
}

variable "image_name" {
  default     = "ubuntu-20.04-x86_64"
  description = "Image Name of VM to start on NERC, look at the images in Horizon"
}

variable "image_id" {
  default     = "126a1c8a-1802-434f-bee3-c3b6c8def513"
  description = "Image ID of VM to start on NERC, look at the API images in Horizon"
}

variable "vm_flavor" {
  default     = "m1.tiny"
  description = "VM flavor to to start https://nerc-project.github.io/nerc-docs/openstack/create-and-connect-to-the-VM/flavors/"
}

variable "keypair-name" {
  description = "SSH Keypair name. This is the name it will be in OpenStack"
  default     = "username-keypair"
}

variable "keypair-path" {
  default     = "~/.ssh/username-keypair.pub"
  description = "SSH Keypair PUBLIC key location - You can generate `ssh-keygen -t rsa -f outputname`"
}

#  Network Options

variable "secgroup" {
  default     = "username-ssh-only"
  description = "Name of Security Group created and applied to the VMs"
}

variable "network_name" {
  default     = "default_network"
  description = "Name of your Network"
}