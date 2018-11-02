variable "policy_id" {
  description = "Id of the aim policy"
  type = "string"
}

variable "policy_condition_type" {
  type = "string"
}

variable "policy_condition_values" {
  type = "list"
}

variable "policy_condition_variable" {
  type = "string"
}

variable "policy_effect" {
  description = "Effect of the statement either Allow or Deny and action on the resource"
  type = "string"
  default = "Deny"
}

variable "principal_identifiers" {
  description = "Policy principal Identifiers."
  type = "list"
}

variable "principal_type" {
  description = "Type of the principal i.e. AWS or Service"
  type = "string"
}

variable "policy_actions" {
  description = "List of actions policy applies to"
  type = "list"
}
variable "aws_resources" {
  description = "List of resources this policy applies to"
  type = "list"
}

variable "iam_policy_name_prefix" {
  description = "Name of the polic"
  type = "string"
}

variable "iam_policy_description" {
  description = "Description of the IAM policy"
  type = "string"
}
