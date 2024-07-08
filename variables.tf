# Cloud COnfig Rule:

variable "cloud_config_rule_name" {
  description = "Name of the cloud config rule"
  type        = string
}

variable "cloud_config_rule_description" {
  description = "Description of the cloud config rule"
  type        = string
}

variable "cloud_config_rule_target_native_types" {
  description = "Target native types for the cloud config rule"
  type        = list(string)
}

variable "cloud_config_rule_security_sub_categories" {
  description = "Security sub-categories for the cloud config rule"
  type        = list(string)
}

variable "cloud_config_rule_scope_account_ids" {
  description = "Scope account IDs for the cloud config rule"
  type        = list(string)
}

variable "cloud_config_rule_function_as_control" {
  description = "Function as control"
  type        = bool
}

variable "cloud_config_rule_remediation_instructions" {
  description = "Remediation instructions"
  type        = string
}

variable "cloud_config_rule_enabled" {
  description = "Enable the cloud config rule"
  type        = bool
}

variable "cloud_config_rule_severity" {
  description = "Severity of the cloud config rule"
  type        = string
}

variable "cloud_config_rule_opa_policy" {
  description = "OPA policy for the cloud config rule"
  type        = string
}

variable "cloud_config_rule_iac_matcher_type" {
  description = "Type of IaC matcher"
  type        = string
}

variable "cloud_config_rule_iac_matcher_rego_code" {
  description = "Rego code for the IaC matcher"
  type        = string
}

variable "cloud_config_rule_association_security_sub_category_ids" {
  description = "Security sub-category IDs for associations"
  type        = list(string)
}

variable "cloud_config_rule_association_cloud_config_rule_ids" {
  description = "Cloud config rule IDs for associations"
  type        = list(string)
}


# Variables for wiz_cicd_scan_policy.iac
variable "cicd_scan_policy_iac_name" {
  description = "Name of the CICD scan policy for IaC"
  type        = string
}

variable "cicd_scan_policy_iac_description" {
  description = "Description of the CICD scan policy for IaC"
  type        = string
}

variable "cicd_scan_policy_iac_count_threshold" {
  description = "Count threshold for IaC scan policy"
  type        = number
}

variable "cicd_scan_policy_iac_severity_threshold" {
  description = "Severity threshold for IaC scan policy"
  type        = string
}

variable "cicd_scan_policy_iac_builtin_ignore_tags_enabled" {
  description = "Enable builtin ignore tags for IaC scan policy"
  type        = bool
}

variable "cicd_scan_policy_iac_ignored_rules" {
  description = "Ignored rules for IaC scan policy"
  type        = list(string)
}

variable "cicd_scan_policy_iac_custom_ignore_tag1_key" {
  description = "Key for custom ignore tag 1 for IaC scan policy"
  type        = string
}

variable "cicd_scan_policy_iac_custom_ignore_tag1_value" {
  description = "Value for custom ignore tag 1 for IaC scan policy"
  type        = string
}

variable "cicd_scan_policy_iac_custom_ignore_tag1_ignore_all_rules" {
  description = "Ignore all rules for custom ignore tag 1 for IaC scan policy"
  type        = bool
}

variable "cicd_scan_policy_iac_custom_ignore_tag1_rule_ids" {
  description = "Rule IDs for custom ignore tag 1 for IaC scan policy"
  type        = list(string)
}

variable "cicd_scan_policy_iac_custom_ignore_tag2_key" {
  description = "Key for custom ignore tag 2 for IaC scan policy"
  type        = string
}

variable "cicd_scan_policy_iac_custom_ignore_tag2_value" {
  description = "Value for custom ignore tag 2 for IaC scan policy"
  type        = string
}

variable "cicd_scan_policy_iac_custom_ignore_tag2_ignore_all_rules" {
  description = "Ignore all rules for custom ignore tag 2 for IaC scan policy"
  type        = bool
}

variable "cicd_scan_policy_iac_custom_ignore_tag2_rule_ids" {
  description = "Rule IDs for custom ignore tag 2 for IaC scan policy"
  type        = list(string)
}

# Variables for wiz_cicd_scan_policy.secrets
variable "cicd_scan_policy_secrets_name" {
  description = "Name of the CICD scan policy for secrets"
  type        = string
}

variable "cicd_scan_policy_secrets_description" {
  description = "Description of the CICD scan policy for secrets"
  type        = string
}

variable "cicd_scan_policy_secrets_count_threshold" {
  description = "Count threshold for secrets scan policy"
  type        = number
}

variable "cicd_scan_policy_secrets_path_allow_list" {
  description = "Path allow list for secrets scan policy"
  type        = list(string)
}

# Variables for wiz_cicd_scan_policy.vulnerabilities
variable "cicd_scan_policy_vulnerabilities_name" {
  description = "Name of the CICD scan policy for vulnerabilities"
  type        = string
}

variable "cicd_scan_policy_vulnerabilities_description" {
  description = "Description of the CICD scan policy for vulnerabilities"
  type        = string
}

variable "cicd_scan_policy_vulnerabilities_ignore_unfixed" {
  description = "Ignore unfixed vulnerabilities"
  type        = bool
}

variable "cicd_scan_policy_vulnerabilities_package_allow_list" {
  description = "Package allow list for vulnerabilities scan policy"
  type        = list(string)
}

variable "cicd_scan_policy_vulnerabilities_package_count_threshold" {
  description = "Package count threshold for vulnerabilities scan policy"
  type        = number
}

variable "cicd_scan_policy_vulnerabilities_severity" {
  description = "Severity for vulnerabilities scan policy"
  type        = string
}

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
