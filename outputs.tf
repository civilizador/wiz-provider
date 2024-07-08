# cloud_config_rule

output "cloud_config_rule_id" {
  value = module.cloud_config_rule.cloud_config_rule_id
}

output "cloud_config_rule_association_id" {
  value = module.cloud_config_rule.cloud_config_rule_association_id
}


# cicd_scan_policy


output "cicd_scan_policy_iac_id" {
  description = "The ID of the CICD scan policy for IaC"
  value       = module.cicd_scan_policy.cicd_scan_policy_iac_id
}

output "cicd_scan_policy_secrets_id" {
  description = "The ID of the CICD scan policy for secrets"
  value       = module.cicd_scan_policy.cicd_scan_policy_secrets_id
}

output "cicd_scan_policy_vulnerabilities_id" {
  description = "The ID of the CICD scan policy for vulnerabilities"
  value       = module.cicd_scan_policy.cicd_scan_policy_vulnerabilities_id
}

# Jira Integration 
output "integration_jira_id" {
  description = "The ID of the Jira integration"
  value       = module.jira_integration.integration_jira_id
}

output "automation_rule_jira_id" {
  description = "The ID of the Jira automation rule"
  value       = module.jira_integration.automation_rule_jira_id
}
