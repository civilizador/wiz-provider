output "integration_jira_id" {
  description = "The ID of the Jira integration"
  value       = wiz_integration_jira.this.id
}

output "automation_rule_jira_id" {
  description = "The ID of the Jira automation rule"
  value       = wiz_automation_rule_jira_create_ticket.this.id
}
