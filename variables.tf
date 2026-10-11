variable "sesv2_email_identities" {
  description = <<EOT
Map of sesv2_email_identities, attributes below
Required:
    - email_identity
Optional:
    - configuration_set_name
    - region
    - tags
    - tags_all
    - dkim_signing_attributes (block):
        - domain_signing_private_key (optional)
        - domain_signing_selector (optional)
        - next_signing_key_length (optional)
EOT

  type = map(object({
    email_identity         = string
    configuration_set_name = optional(string)
    region                 = optional(string)
    tags                   = optional(map(string))
    tags_all               = optional(map(string))
    dkim_signing_attributes = optional(object({
      domain_signing_private_key = optional(string)
      domain_signing_selector    = optional(string)
      next_signing_key_length    = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.sesv2_email_identities : (
        v.configuration_set_name == null || (length(v.configuration_set_name) >= 1 && length(v.configuration_set_name) <= 64)
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.sesv2_email_identities : (
        v.dkim_signing_attributes == null || (v.dkim_signing_attributes.domain_signing_selector == null || (length(v.dkim_signing_attributes.domain_signing_selector) >= 1 && length(v.dkim_signing_attributes.domain_signing_selector) <= 63))
      )
    ])
    error_message = "must be between 1 and 63 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

