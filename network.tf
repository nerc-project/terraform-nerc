# Create Security Group an Instance
resource "openstack_networking_secgroup_v2" "secgroup_1" {
  name        = "${var.secgroup}"
  description = "My security group"
}

# Add SSH Rule for Security Group for an Instance
resource "openstack_networking_secgroup_rule_v2" "ssh-ingress" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_1.id}"
}

resource "openstack_compute_secgroup_v2" "secgroup_1" {
  name        = "my_secgroup"
  description = "My security group"

  rule {
    from_port   = 22
    to_port     = 22
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }

  rule {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
}

# Create Floating IP for each instance
resource "openstack_networking_floatingip_v2" "floatip_1" {
  count = "${var.quantity}"
  pool  = "provider"
}