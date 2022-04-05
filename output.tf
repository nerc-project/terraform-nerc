output "server_ips" {
  value = openstack_compute_floatingip_associate_v2.myip.*.floating_ip
}
