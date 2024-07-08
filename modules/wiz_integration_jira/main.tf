resource "wiz_integration_jira" "this" {
  name          = var.integration_jira_name
  jira_url      = var.integration_jira_url
  jira_username = var.integration_jira_username
  jira_password = var.integration_jira_password
  scope         = var.integration_jira_scope
}

resource "wiz_automation_rule_jira_create_ticket" "this" {
  name           = var.automation_rule_jira_name
  description    = var.automation_rule_jira_description
  enabled        = var.automation_rule_jira_enabled
  integration_id = wiz_integration_jira.this.id
  trigger_source = var.automation_rule_jira_trigger_source
  trigger_type   = var.automation_rule_jira_trigger_type
  filters        = var.automation_rule_jira_filters
  jira_summary   = var.automation_rule_jira_summary
  jira_project   = var.automation_rule_jira_project
  jira_description = var.automation_rule_jira_description_template
}