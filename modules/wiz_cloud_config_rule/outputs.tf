output "cloud_config_rule_id" {
  description = "The ID of the cloud config rule"
  value       = wiz_cloud_config_rule.this.id
}

output "cloud_config_rule_association_id" {
  description = "The ID of the cloud config rule association"
  value       = wiz_cloud_config_rule_associations.this.id
}
