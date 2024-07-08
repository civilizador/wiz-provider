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
