variable "cloud_project_instances" {
  description = <<EOT
Map of cloud_project_instances, attributes below
Required:
    - billing_period
    - name
    - region
    - service_name
    - boot_from (block):
        - image_id (optional)
        - volume_id (optional)
    - flavor (block):
        - flavor_id (required)
    - network (block):
        - private (optional, block):
            - floating_ip (optional, block):
                - id (optional)
            - floating_ip_create (optional, block):
                - description (optional)
            - gateway (optional, block):
                - id (optional)
            - gateway_create (optional, block):
                - model (optional)
                - name (optional)
            - ip (optional)
            - network (optional, block):
                - id (optional)
                - subnet_id (optional)
            - network_create (optional, block):
                - name (optional)
                - subnet (optional, block):
                    - cidr (optional)
                    - enable_dhcp (optional)
                    - ip_version (optional)
                - vlan_id (optional)
        - public (optional)
Optional:
    - availability_zone
    - bulk
    - user_data
    - auto_backup (block):
        - cron (required)
        - rotation (required)
    - group (block):
        - group_id (optional)
    - ssh_key (block):
        - name (required)
    - ssh_key_create (block):
        - name (required)
        - public_key (required)
    - timeouts (block):
        - create (optional)
        - default (optional)
EOT

  type = map(object({
    billing_period    = string
    name              = string
    region            = string
    service_name      = string
    availability_zone = optional(string)
    bulk              = optional(number)
    user_data         = optional(string)
    boot_from = object({
      image_id  = optional(string)
      volume_id = optional(string)
    })
    flavor = object({
      flavor_id = string
    })
    network = object({
      private = optional(object({
        floating_ip = optional(object({
          id = optional(string)
        }))
        floating_ip_create = optional(object({
          description = optional(string)
        }))
        gateway = optional(object({
          id = optional(string)
        }))
        gateway_create = optional(object({
          model = optional(string)
          name  = optional(string)
        }))
        ip = optional(string)
        network = optional(object({
          id        = optional(string)
          subnet_id = optional(string)
        }))
        network_create = optional(object({
          name = optional(string)
          subnet = optional(object({
            cidr        = optional(string)
            enable_dhcp = optional(bool)
            ip_version  = optional(number)
          }))
          vlan_id = optional(number)
        }))
      }))
      public = optional(bool)
    })
    auto_backup = optional(object({
      cron     = string
      rotation = number
    }))
    group = optional(object({
      group_id = optional(string)
    }))
    ssh_key = optional(object({
      name = string
    }))
    ssh_key_create = optional(object({
      name       = string
      public_key = string
    }))
    timeouts = optional(object({
      create  = optional(string)
      default = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

