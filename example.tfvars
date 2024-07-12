################
#  Example tfvars file, you can change any variable used in inputs.tf here
################

# NERC VM options

# number of VM's to start
quantity = "1"

image_name = "ubuntu-20.04-x86_64"
image_id   = "8c87cf6f-32f9-4a4b-91a5-0d734b7c9770"

# VM Flavor: https://nerc-project.github.io/nerc-docs/openstack/create-and-connect-to-the-VM/flavors/
# Availability depends upon your Quota i.e. vCPU / RAM / Disk, etc.
vm_flavor = "cpu-su.2"

##  SSH Keypair control
keypair-name = "your-private-key-pair"
keypair-path = "./your-private-key-pair.pub"

#  Network options

secgroup = "your-ssh-only-sec-group"

network_name = "default_network"
