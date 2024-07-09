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

resource "wiz_cicd_scan_policy" "iac" {
  name        = var.cicd_scan_policy_iac_name
  description = var.cicd_scan_policy_iac_description
  iac_params {
    count_threshold             = var.cicd_scan_policy_iac_count_threshold
    severity_threshold          = var.cicd_scan_policy_iac_severity_threshold
    builtin_ignore_tags_enabled = var.cicd_scan_policy_iac_builtin_ignore_tags_enabled
    ignored_rules               = var.cicd_scan_policy_iac_ignored_rules
    custom_ignore_tags {
      key              = var.cicd_scan_policy_iac_custom_ignore_tag1_key
      value            = var.cicd_scan_policy_iac_custom_ignore_tag1_value
      ignore_all_rules = var.cicd_scan_policy_iac_custom_ignore_tag1_ignore_all_rules
      rule_ids         = var.cicd_scan_policy_iac_custom_ignore_tag1_rule_ids
    }
    custom_ignore_tags {
      key              = var.cicd_scan_policy_iac_custom_ignore_tag2_key
      value            = var.cicd_scan_policy_iac_custom_ignore_tag2_value
      ignore_all_rules = var.cicd_scan_policy_iac_custom_ignore_tag2_ignore_all_rules
      rule_ids         = var.cicd_scan_policy_iac_custom_ignore_tag2_rule_ids
    }
  }
}

resource "wiz_cicd_scan_policy" "secrets" {
  name        = var.cicd_scan_policy_secrets_name
  description = var.cicd_scan_policy_secrets_description
  disk_secrets_params {
    count_threshold = var.cicd_scan_policy_secrets_count_threshold
    path_allow_list = var.cicd_scan_policy_secrets_path_allow_list
  }
}

resource "wiz_cicd_scan_policy" "vulnerabilities" {
  name        = var.cicd_scan_policy_vulnerabilities_name
  description = var.cicd_scan_policy_vulnerabilities_description
  disk_vulnerabilities_params {
    ignore_unfixed           = var.cicd_scan_policy_vulnerabilities_ignore_unfixed
    package_allow_list       = var.cicd_scan_policy_vulnerabilities_package_allow_list
    package_count_threshold  = var.cicd_scan_policy_vulnerabilities_package_count_threshold
    severity                 = var.cicd_scan_policy_vulnerabilities_severity
  }
}
