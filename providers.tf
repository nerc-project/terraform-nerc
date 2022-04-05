# Define required providers
terraform {
  required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.35.0"
    }
  }
}

# Configure the OpenStack Provider
# provider "openstack" {
#   user_name   = "admin"
#   tenant_name = "admin"
#   password    = "pwd" #pragma: allowlist secret
#   auth_url    = "http://myauthurl:5000/v2.0"
#   region      = "RegionOne"
# }
provider "openstack" {}
