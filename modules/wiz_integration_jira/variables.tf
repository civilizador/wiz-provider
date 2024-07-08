# Variables for wiz_integration_jira
variable "integration_jira_name" {
  description = "Name of the Jira integration"
  type        = string
}

variable "integration_jira_url" {
  description = "Jira URL"
  type        = string
}

variable "integration_jira_username" {
  description = "Jira username"
  type        = string
}

variable "integration_jira_password" {
  description = "Jira password"
  type        = string
  sensitive   = true
}

variable "integration_jira_scope" {
  description = "Scope of the Jira integration"
  type        = string
}

# Variables for wiz_automation_rule_jira_create_ticket
variable "automation_rule_jira_name" {
  description = "Name of the Jira automation rule"
  type        = string
}

variable "automation_rule_jira_description" {
  description = "Description of the Jira automation rule"
  type        = string
}

variable "automation_rule_jira_enabled" {
  description = "Enable the Jira automation rule"
  type        = bool
}

variable "automation_rule_jira_trigger_source" {
  description = "Trigger source for the Jira automation rule"
  type        = string
}

variable "automation_rule_jira_trigger_type" {
  description = "Trigger types for the Jira automation rule"
  type        = list(string)
}

variable "automation_rule_jira_filters" {
  description = "Filters for the Jira automation rule"
  type        = string
}

variable "automation_rule_jira_summary" {
  description = "Summary template for the Jira ticket"
  type        = string
}

variable "automation_rule_jira_project" {
  description = "Jira project key"
  type        = string
}

variable "automation_rule_jira_description_template" {
  description = "Description template for the Jira ticket"
  type        = string
}
