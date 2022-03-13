# Create a keypair
# resource "openstack_compute_keypair_v2" "my-cloud-key" {
#   name       = "my-key"
#   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABg..."
# }

resource "openstack_compute_keypair_v2" "my-cloud-key" {
  name       = var.keypair-name
  public_key = file("${var.keypair-path}")
}

# Create an Instance
resource "openstack_compute_instance_v2" "servers" {
  count      = var.quantity
  name       = "test-nerc-${count.index}"
  image_name = var.image_name
  # image_id        = "126a1c8a-1802-434f-bee3-c3b6c8def513"
  flavor_name     = var.vm_flavor
  key_pair        = openstack_compute_keypair_v2.my-cloud-key.name
  security_groups = ["${var.secgroup}"] # ["${openstack_compute_secgroup_v2.secgroup_1.name}"]

  network {
    name = "default_network"
  }
}

# Assign a Floating IP
resource "openstack_compute_floatingip_associate_v2" "myip" {
  count       = var.quantity
  floating_ip = element(openstack_networking_floatingip_v2.floatip_1.*.address, count.index)
  instance_id = element(openstack_compute_instance_v2.servers.*.id, count.index)
}
