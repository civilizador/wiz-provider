module "wiz_cloud_config_rule" {
  source = "./modules/wiz_cloud_config_rule"
  cloud_config_rule_name                    = var.cloud_config_rule_name
  cloud_config_rule_description             = var.cloud_config_rule_description
  cloud_config_rule_target_native_types     = var.cloud_config_rule_target_native_types
  cloud_config_rule_security_sub_categories = var.cloud_config_rule_security_sub_categories
  cloud_config_rule_scope_account_ids       = var.cloud_config_rule_scope_account_ids
  cloud_config_rule_function_as_control     = var.cloud_config_rule_function_as_control
  cloud_config_rule_remediation_instructions= var.cloud_config_rule_remediation_instructions
  cloud_config_rule_enabled                 = var.cloud_config_rule_enabled
  cloud_config_rule_severity                = var.cloud_config_rule_severity
  cloud_config_rule_opa_policy              = var.cloud_config_rule_opa_policy
  cloud_config_rule_iac_matcher_type        = var.cloud_config_rule_iac_matcher_type
  cloud_config_rule_iac_matcher_rego_code   = var.cloud_config_rule_iac_matcher_rego_code
  cloud_config_rule_association_security_sub_category_ids = var.cloud_config_rule_association_security_sub_category_ids
  cloud_config_rule_association_cloud_config_rule_ids     = var.cloud_config_rule_association_cloud_config_rule_ids
}




# cicd_scan_policy

module "wiz_cicd_scan_policy" {
  source = "./modules/wiz_cicd_scan_policy"
  providers = {
    wiz = wiz.default
  }
  cicd_scan_policy_iac_name                    = var.cicd_scan_policy_iac_name
  cicd_scan_policy_iac_description             = var.cicd_scan_policy_iac_description
  cicd_scan_policy_iac_count_threshold         = var.cicd_scan_policy_iac_count_threshold
  cicd_scan_policy_iac_severity_threshold      = var.cicd_scan_policy_iac_severity_threshold
  cicd_scan_policy_iac_builtin_ignore_tags_enabled = var.cicd_scan_policy_iac_builtin_ignore_tags_enabled
  cicd_scan_policy_iac_ignored_rules           = var.cicd_scan_policy_iac_ignored_rules
  cicd_scan_policy_iac_custom_ignore_tag1_key  = var.cicd_scan_policy_iac_custom_ignore_tag1_key
  cicd_scan_policy_iac_custom_ignore_tag1_value = var.cicd_scan_policy_iac_custom_ignore_tag1_value
  cicd_scan_policy_iac_custom_ignore_tag1_ignore_all_rules = var.cicd_scan_policy_iac_custom_ignore_tag1_ignore_all_rules
  cicd_scan_policy_iac_custom_ignore_tag1_rule_ids = var.cicd_scan_policy_iac_custom_ignore_tag1_rule_ids
  cicd_scan_policy_iac_custom_ignore_tag2_key  = var.cicd_scan_policy_iac_custom_ignore_tag2_key
  cicd_scan_policy_iac_custom_ignore_tag2_value = var.cicd_scan_policy_iac_custom_ignore_tag2_value
  cicd_scan_policy_iac_custom_ignore_tag2_ignore_all_rules = var.cicd_scan_policy_iac_custom_ignore_tag2_ignore_all_rules
  cicd_scan_policy_iac_custom_ignore_tag2_rule_ids = var.cicd_scan_policy_iac_custom_ignore_tag2_rule_ids

  cicd_scan_policy_secrets_name                = var.cicd_scan_policy_secrets_name
  cicd_scan_policy_secrets_description         = var.cicd_scan_policy_secrets_description
  cicd_scan_policy_secrets_count_threshold     = var.cicd_scan_policy_secrets_count_threshold
  cicd_scan_policy_secrets_path_allow_list     = var.cicd_scan_policy_secrets_path_allow_list

  cicd_scan_policy_vulnerabilities_name        = var.cicd_scan_policy_vulnerabilities_name
  cicd_scan_policy_vulnerabilities_description = var.cicd_scan_policy_vulnerabilities_description
  cicd_scan_policy_vulnerabilities_ignore_unfixed = var.cicd_scan_policy_vulnerabilities_ignore_unfixed
  cicd_scan_policy_vulnerabilities_package_allow_list = var.cicd_scan_policy_vulnerabilities_package_allow_list
  cicd_scan_policy_vulnerabilities_package_count_threshold = var.cicd_scan_policy_vulnerabilities_package_count_threshold
  cicd_scan_policy_vulnerabilities_severity    = var.cicd_scan_policy_vulnerabilities_severity
}

# Jira integration - Create Jira ticket
module "wiz_integration_jira" {
  source = "./modules/wiz_integration_jira"
  providers = {
    wiz = wiz.default
  }
  integration_jira_name              = var.integration_jira_name
  integration_jira_url               = var.integration_jira_url
  integration_jira_username          = var.integration_jira_username
  integration_jira_password          = var.integration_jira_password
  integration_jira_scope             = var.integration_jira_scope

  automation_rule_jira_name          = var.automation_rule_jira_name
  automation_rule_jira_description   = var.automation_rule_jira_description
  automation_rule_jira_enabled       = var.automation_rule_jira_enabled
  automation_rule_jira_trigger_source = var.automation_rule_jira_trigger_source
  automation_rule_jira_trigger_type  = var.automation_rule_jira_trigger_type
  automation_rule_jira_filters       = var.automation_rule_jira_filters
  automation_rule_jira_summary       = var.automation_rule_jira_summary
  automation_rule_jira_project       = var.automation_rule_jira_project
  automation_rule_jira_description_template = var.automation_rule_jira_description_template
}


