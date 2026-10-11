output "cloud_project_instances_id" {
  description = "Map of id values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no id are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_project_instances_addresses" {
  description = "Map of addresses values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no addresses are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => v.addresses if v.addresses != null && length(v.addresses) > 0 }
}
output "cloud_project_instances_attached_volumes" {
  description = "Map of attached_volumes values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no attached_volumes are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => v.attached_volumes if v.attached_volumes != null && length(v.attached_volumes) > 0 }
}
output "cloud_project_instances_auto_backup" {
  description = "Map of auto_backup values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no auto_backup are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => one(v.auto_backup) if v.auto_backup != null && length(v.auto_backup) > 0 }
}
output "cloud_project_instances_availability_zone" {
  description = "Map of availability_zone values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no availability_zone are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => v.availability_zone if v.availability_zone != null && length(v.availability_zone) > 0 }
}
output "cloud_project_instances_billing_period" {
  description = "Map of billing_period values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no billing_period are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => v.billing_period if v.billing_period != null && length(v.billing_period) > 0 }
}
output "cloud_project_instances_boot_from" {
  description = "Map of boot_from values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no boot_from are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => one(v.boot_from) if v.boot_from != null && length(v.boot_from) > 0 }
}
output "cloud_project_instances_bulk" {
  description = "Map of bulk values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no bulk are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => v.bulk if v.bulk != null }
}
output "cloud_project_instances_flavor" {
  description = "Map of flavor values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no flavor are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => one(v.flavor) if v.flavor != null && length(v.flavor) > 0 }
}
output "cloud_project_instances_flavor_id" {
  description = "Map of flavor_id values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no flavor_id are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => v.flavor_id if v.flavor_id != null && length(v.flavor_id) > 0 }
}
output "cloud_project_instances_flavor_name" {
  description = "Map of flavor_name values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no flavor_name are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => v.flavor_name if v.flavor_name != null && length(v.flavor_name) > 0 }
}
output "cloud_project_instances_group" {
  description = "Map of group values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no group are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => one(v.group) if v.group != null && length(v.group) > 0 }
}
output "cloud_project_instances_image_id" {
  description = "Map of image_id values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no image_id are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => v.image_id if v.image_id != null && length(v.image_id) > 0 }
}
output "cloud_project_instances_name" {
  description = "Map of name values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no name are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloud_project_instances_network" {
  description = "Map of network values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no network are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => one(v.network) if v.network != null && length(v.network) > 0 }
}
output "cloud_project_instances_region" {
  description = "Map of region values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no region are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloud_project_instances_service_name" {
  description = "Map of service_name values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no service_name are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "cloud_project_instances_ssh_key" {
  description = "Map of ssh_key values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no ssh_key are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => one(v.ssh_key) if v.ssh_key != null && length(v.ssh_key) > 0 }
}
output "cloud_project_instances_ssh_key_create" {
  description = "Map of ssh_key_create values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no ssh_key_create are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => one(v.ssh_key_create) if v.ssh_key_create != null && length(v.ssh_key_create) > 0 }
}
output "cloud_project_instances_status" {
  description = "Map of status values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no status are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => v.status if v.status != null && length(v.status) > 0 }
}
output "cloud_project_instances_task_state" {
  description = "Map of task_state values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no task_state are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => v.task_state if v.task_state != null && length(v.task_state) > 0 }
}
output "cloud_project_instances_user_data" {
  description = "Map of user_data values across all cloud_project_instances, keyed the same as var.cloud_project_instances except keys with no user_data are omitted"
  value       = { for k, v in ovh_cloud_project_instance.cloud_project_instances : k => v.user_data if v.user_data != null && length(v.user_data) > 0 }
}

