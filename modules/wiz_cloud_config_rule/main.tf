terraform {
  required_providers {
    wiz = {
      source = "AxtonGrams/wiz"
      version = "1.1.8"
    }
  }
}

provider "wiz" {
  alias                  = "default"
  wiz_url                = var.wiz_url
  wiz_auth_client_id     = var.wiz_auth_client_id
  wiz_auth_client_secret = var.wiz_auth_client_secret
  wiz_auth_audience      = "wiz-api"
}

resource "wiz_cloud_config_rule" "this" {
  name                    = var.cloud_config_rule_name
  description             = var.cloud_config_rule_description
  target_native_types     = var.cloud_config_rule_target_native_types
  security_sub_categories = var.cloud_config_rule_security_sub_categories
  scope_account_ids       = var.cloud_config_rule_scope_account_ids
  function_as_control     = var.cloud_config_rule_function_as_control
  remediation_instructions= var.cloud_config_rule_remediation_instructions
  enabled                 = var.cloud_config_rule_enabled
  severity                = var.cloud_config_rule_severity
  opa_policy              = var.cloud_config_rule_opa_policy

  iac_matchers {
    type      = var.cloud_config_rule_iac_matcher_type
    rego_code = var.cloud_config_rule_iac_matcher_rego_code
  }
}

resource "wiz_cloud_config_rule_associations" "this" {
  security_sub_category_ids = var.cloud_config_rule_association_security_sub_category_ids
  cloud_config_rule_ids     = var.cloud_config_rule_association_cloud_config_rule_ids
}
