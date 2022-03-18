################
#  Example tfvars file, you can change any variable used in inputs.tf here
################

# NERC VM options

# number of VM's to start
quantity = "1"

image_name = "ubuntu-20.04-x86_64"
image_id   = "126a1c8a-1802-434f-bee3-c3b6c8def513"

# VM Flavor: https://nerc-project.github.io/nerc-docs/openstack/create-and-connect-to-the-VM/flavors/
# Availability depends upon your Quota i.e. vCPU / RAM / Disk, etc.
vm_flavor = "m1.medium"

##  SSH Keypair control
keypair-name = "milson-keypair"
keypair-path = "~/.ssh/milson-tf-key.pub"

#  Network options

secgroup = "milson-ssh-only"

network_name = "default_network"