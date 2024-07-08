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
