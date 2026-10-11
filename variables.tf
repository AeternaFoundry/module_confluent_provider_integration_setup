variable "provider_integration_setups" {
  description = <<EOT
Map of provider_integration_setups, attributes below
Required:
    - cloud
    - display_name
    - environment (block):
        - id (required)
EOT

  type = map(object({
    cloud        = string
    display_name = string
    environment = object({
      id = string
    })
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

