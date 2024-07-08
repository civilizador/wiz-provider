# Cloud Config Rules
cloud_config_rule_name                    = "terraform-test-iac"
cloud_config_rule_description             = "test description"
cloud_config_rule_target_native_types     = ["account"]
cloud_config_rule_security_sub_categories = ["wsct-id-7", "wsct-id-3759"]
cloud_config_rule_scope_account_ids       = ["87d3d654-41ba-53d2-aeba-8399be9f62d7"]
cloud_config_rule_function_as_control     = false
cloud_config_rule_remediation_instructions= "fix it"
cloud_config_rule_enabled                 = false
cloud_config_rule_severity                = "HIGH"
cloud_config_rule_opa_policy              = <<EOT
package wiz
default result = "pass"
EOT
cloud_config_rule_iac_matcher_type        = "CLOUD_FORMATION"
cloud_config_rule_iac_matcher_rego_code   = <<EOT
package wiz

import data.generic.cloudformation as cloudFormationLib

import data.generic.common as common_lib

WizPolicy[result] {
        resource := input.document[i].Resources[name]
        resource.Type == "AWS::Config::ConfigRule"
        not hasAccessKeyRotationRule(resource)

        result := {
                "documentId": input.document[i].id,
                "searchKey": sprintf("Resources.%s", [name]),
                "issueType": "MissingAttribute",
                "keyExpectedValue": sprintf("Resources.%s has a ConfigRule defining rotation period on AccessKeys.", [name]),
                "keyActualValue": sprintf("Resources.%s doesn't have a ConfigRule defining rotation period on AccessKeys.", [name]),
                "resourceTags": cloudFormationLib.getCFTags(resource),
        }
}

hasAccessKeyRotationRule(configRule) {
        configRule.Properties.Source.SourceIdentifier == "ACCESS_KEYS_ROTATED"
} else = false {
        true
}
EOT
cloud_config_rule_association_security_sub_category_ids = ["2e5bc0d5-835b-4b4c-99cf-b1c6ace90a52", "708ec4a1-1a5c-4cb3-9c52-511229c5bb35"]
cloud_config_rule_association_cloud_config_rule_ids     = ["301e5fd0-6a1a-42a7-99f5-3b0436d55a7f", "a5fbd955-ed78-445a-827a-06d6cbe5aab2"]


# cicd_scan_policy

cicd_scan_policy_iac_name                    = "terraform-test-iac"
cicd_scan_policy_iac_description             = "terraform-test-iac description"
cicd_scan_policy_iac_count_threshold         = 3
cicd_scan_policy_iac_severity_threshold      = "CRITICAL"
cicd_scan_policy_iac_builtin_ignore_tags_enabled = false
cicd_scan_policy_iac_ignored_rules           = [
  "fd7dd0c6-4953-4b36-bc39-004ec3d870db",
  "063fb380-9eda-4c08-a31b-9211ee37bd42",
]
cicd_scan_policy_iac_custom_ignore_tag1_key  = "testkey1"
cicd_scan_policy_iac_custom_ignore_tag1_value = "testval1"
cicd_scan_policy_iac_custom_ignore_tag1_ignore_all_rules = false
cicd_scan_policy_iac_custom_ignore_tag1_rule_ids = [
  "063fb380-9eda-4c08-a31b-9211ee37bd42",
]
cicd_scan_policy_iac_custom_ignore_tag2_key  = "testkey2"
cicd_scan_policy_iac_custom_ignore_tag2_value = "testval2"
cicd_scan_policy_iac_custom_ignore_tag2_ignore_all_rules = false
cicd_scan_policy_iac_custom_ignore_tag2_rule_ids = [
  "1f0ee3b5-5404-4b40-bbc8-33a990330ac3",
  "a1958aa1-b810-4df6-bd82-487cb37c6039",
]

cicd_scan_policy_secrets_name                = "terraform-test-secrets2"
cicd_scan_policy_secrets_description         = "terraform-test-secrets description"
cicd_scan_policy_secrets_count_threshold     = 3
cicd_scan_policy_secrets_path_allow_list     = [
  "/etc",
  "/opt",
  "/root",
]

cicd_scan_policy_vulnerabilities_name        = "terraform-test-vulnerabilities"
cicd_scan_policy_vulnerabilities_description = "terraform-test-vulnerabilities description"
cicd_scan_policy_vulnerabilities_ignore_unfixed = true
cicd_scan_policy_vulnerabilities_package_allow_list = [
  "lsof",
  "sudo",
  "apt",
]
cicd_scan_policy_vulnerabilities_package_count_threshold = 3
cicd_scan_policy_vulnerabilities_severity    = "LOW"


# Jira Integration

integration_jira_name              = "default"
integration_jira_url               = "https://your-jira-instance.atlassian.net"
integration_jira_username          = "your-jira-username"
integration_jira_password          = "your-jira-password"
integration_jira_scope             = "All Resources, Restrict this Integration to global roles only"

automation_rule_jira_name          = "example"
automation_rule_jira_description   = "example description"
automation_rule_jira_enabled       = true
automation_rule_jira_trigger_source = "ISSUES"
automation_rule_jira_trigger_type  = ["CREATED"]
automation_rule_jira_filters       = jsonencode({
  "severity" : ["CRITICAL"]
})
automation_rule_jira_summary       = "Wiz Issue: {{issue.control.name}}"
automation_rule_jira_project       = "PROJ"
automation_rule_jira_description_template = <<EOT
Description:  {{issue.description}}
Status:       {{issue.status}}
Created:      {{issue.createdAt}}
Severity:     {{issue.severity}}
Project:      {{#issue.projects}}{{name}}, {{/issue.projects}}
EOT
