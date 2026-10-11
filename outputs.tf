output "provider_integration_setups_id" {
  description = "Map of id values across all provider_integration_setups, keyed the same as var.provider_integration_setups except keys with no id are omitted"
  value       = { for k, v in confluent_provider_integration_setup.provider_integration_setups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "provider_integration_setups_cloud" {
  description = "Map of cloud values across all provider_integration_setups, keyed the same as var.provider_integration_setups except keys with no cloud are omitted"
  value       = { for k, v in confluent_provider_integration_setup.provider_integration_setups : k => v.cloud if v.cloud != null && length(v.cloud) > 0 }
}
output "provider_integration_setups_display_name" {
  description = "Map of display_name values across all provider_integration_setups, keyed the same as var.provider_integration_setups except keys with no display_name are omitted"
  value       = { for k, v in confluent_provider_integration_setup.provider_integration_setups : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "provider_integration_setups_environment" {
  description = "Map of environment values across all provider_integration_setups, keyed the same as var.provider_integration_setups except keys with no environment are omitted"
  value       = { for k, v in confluent_provider_integration_setup.provider_integration_setups : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "provider_integration_setups_status" {
  description = "Map of status values across all provider_integration_setups, keyed the same as var.provider_integration_setups except keys with no status are omitted"
  value       = { for k, v in confluent_provider_integration_setup.provider_integration_setups : k => v.status if v.status != null && length(v.status) > 0 }
}
output "provider_integration_setups_usages" {
  description = "Map of usages values across all provider_integration_setups, keyed the same as var.provider_integration_setups except keys with no usages are omitted"
  value       = { for k, v in confluent_provider_integration_setup.provider_integration_setups : k => v.usages if v.usages != null && length(v.usages) > 0 }
}

