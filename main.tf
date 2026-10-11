resource "ovh_cloud_project_instance" "cloud_project_instances" {
  for_each = var.cloud_project_instances

  billing_period    = each.value.billing_period
  name              = each.value.name
  region            = each.value.region
  service_name      = each.value.service_name
  availability_zone = each.value.availability_zone
  bulk              = each.value.bulk
  user_data         = each.value.user_data

  boot_from {
    image_id  = each.value.boot_from.image_id
    volume_id = each.value.boot_from.volume_id
  }

  flavor {
    flavor_id = each.value.flavor.flavor_id
  }

  network {
    dynamic "private" {
      for_each = each.value.network.private != null ? [each.value.network.private] : []
      content {
        dynamic "floating_ip" {
          for_each = private.value.floating_ip != null ? [private.value.floating_ip] : []
          content {
            id = floating_ip.value.id
          }
        }
        dynamic "floating_ip_create" {
          for_each = private.value.floating_ip_create != null ? [private.value.floating_ip_create] : []
          content {
            description = floating_ip_create.value.description
          }
        }
        dynamic "gateway" {
          for_each = private.value.gateway != null ? [private.value.gateway] : []
          content {
            id = gateway.value.id
          }
        }
        dynamic "gateway_create" {
          for_each = private.value.gateway_create != null ? [private.value.gateway_create] : []
          content {
            model = gateway_create.value.model
            name  = gateway_create.value.name
          }
        }
        ip = private.value.ip
        dynamic "network" {
          for_each = private.value.network != null ? [private.value.network] : []
          content {
            id        = network.value.id
            subnet_id = network.value.subnet_id
          }
        }
        dynamic "network_create" {
          for_each = private.value.network_create != null ? [private.value.network_create] : []
          content {
            name = network_create.value.name
            dynamic "subnet" {
              for_each = network_create.value.subnet != null ? [network_create.value.subnet] : []
              content {
                cidr        = subnet.value.cidr
                enable_dhcp = subnet.value.enable_dhcp
                ip_version  = subnet.value.ip_version
              }
            }
            vlan_id = network_create.value.vlan_id
          }
        }
      }
    }
    public = each.value.network.public
  }

  dynamic "auto_backup" {
    for_each = each.value.auto_backup != null ? [each.value.auto_backup] : []
    content {
      cron     = auto_backup.value.cron
      rotation = auto_backup.value.rotation
    }
  }

  dynamic "group" {
    for_each = each.value.group != null ? [each.value.group] : []
    content {
      group_id = group.value.group_id
    }
  }

  dynamic "ssh_key" {
    for_each = each.value.ssh_key != null ? [each.value.ssh_key] : []
    content {
      name = ssh_key.value.name
    }
  }

  dynamic "ssh_key_create" {
    for_each = each.value.ssh_key_create != null ? [each.value.ssh_key_create] : []
    content {
      name       = ssh_key_create.value.name
      public_key = ssh_key_create.value.public_key
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create  = timeouts.value.create
      default = timeouts.value.default
    }
  }
}

