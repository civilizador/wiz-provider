output "cicd_scan_policy_iac_id" {
  description = "The ID of the CICD scan policy for IaC"
  value       = wiz_cicd_scan_policy.iac.id
}

output "cicd_scan_policy_secrets_id" {
  description = "The ID of the CICD scan policy for secrets"
  value       = wiz_cicd_scan_policy.secrets.id
}

output "cicd_scan_policy_vulnerabilities_id" {
  description = "The ID of the CICD scan policy for vulnerabilities"
  value       = wiz_cicd_scan_policy.vulnerabilities.id
}
