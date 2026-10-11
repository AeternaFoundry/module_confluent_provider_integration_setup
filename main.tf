resource "confluent_provider_integration_setup" "provider_integration_setups" {
  for_each = var.provider_integration_setups

  cloud        = each.value.cloud
  display_name = each.value.display_name

  environment {
    id = each.value.environment.id
  }
}

