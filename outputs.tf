output "sesv2_email_identities_id" {
  description = "Map of id values across all sesv2_email_identities, keyed the same as var.sesv2_email_identities"
  value       = { for k, v in aws_sesv2_email_identity.sesv2_email_identities : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sesv2_email_identities_arn" {
  description = "Map of arn values across all sesv2_email_identities, keyed the same as var.sesv2_email_identities"
  value       = { for k, v in aws_sesv2_email_identity.sesv2_email_identities : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sesv2_email_identities_configuration_set_name" {
  description = "Map of configuration_set_name values across all sesv2_email_identities, keyed the same as var.sesv2_email_identities"
  value       = { for k, v in aws_sesv2_email_identity.sesv2_email_identities : k => v.configuration_set_name if v.configuration_set_name != null && length(v.configuration_set_name) > 0 }
}
output "sesv2_email_identities_dkim_signing_attributes" {
  description = "Map of dkim_signing_attributes values across all sesv2_email_identities, keyed the same as var.sesv2_email_identities"
  value       = { for k, v in aws_sesv2_email_identity.sesv2_email_identities : k => one(v.dkim_signing_attributes) if v.dkim_signing_attributes != null && length(v.dkim_signing_attributes) > 0 }
  sensitive   = true
}
output "sesv2_email_identities_email_identity" {
  description = "Map of email_identity values across all sesv2_email_identities, keyed the same as var.sesv2_email_identities"
  value       = { for k, v in aws_sesv2_email_identity.sesv2_email_identities : k => v.email_identity if v.email_identity != null && length(v.email_identity) > 0 }
}
output "sesv2_email_identities_identity_type" {
  description = "Map of identity_type values across all sesv2_email_identities, keyed the same as var.sesv2_email_identities"
  value       = { for k, v in aws_sesv2_email_identity.sesv2_email_identities : k => v.identity_type if v.identity_type != null && length(v.identity_type) > 0 }
}
output "sesv2_email_identities_region" {
  description = "Map of region values across all sesv2_email_identities, keyed the same as var.sesv2_email_identities"
  value       = { for k, v in aws_sesv2_email_identity.sesv2_email_identities : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sesv2_email_identities_tags" {
  description = "Map of tags values across all sesv2_email_identities, keyed the same as var.sesv2_email_identities"
  value       = { for k, v in aws_sesv2_email_identity.sesv2_email_identities : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sesv2_email_identities_tags_all" {
  description = "Map of tags_all values across all sesv2_email_identities, keyed the same as var.sesv2_email_identities"
  value       = { for k, v in aws_sesv2_email_identity.sesv2_email_identities : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "sesv2_email_identities_verification_status" {
  description = "Map of verification_status values across all sesv2_email_identities, keyed the same as var.sesv2_email_identities"
  value       = { for k, v in aws_sesv2_email_identity.sesv2_email_identities : k => v.verification_status if v.verification_status != null && length(v.verification_status) > 0 }
}
output "sesv2_email_identities_verified_for_sending_status" {
  description = "Map of verified_for_sending_status values across all sesv2_email_identities, keyed the same as var.sesv2_email_identities"
  value       = { for k, v in aws_sesv2_email_identity.sesv2_email_identities : k => v.verified_for_sending_status if v.verified_for_sending_status != null }
}

