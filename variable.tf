// Raw data zone details
// KMS details
variable "raw_data_zone_kms_key_name" {}
variable "curated_data_zone_kms_key_name" {}

// IAM Policy details
//  Raw data zone
variable "iam_data_zone_raw_policy_id" {}
variable "iam_data_zone_raw_principal_identifiers" {
  type="list"
}
variable "iam_data_zone_raw_principal_type" {}
variable "iam_data_zone_raw_effect" {
  default = "Deny"
}
variable "iam_data_zone_raw_actions" {
  type = "list"
}
variable "iam_data_zone_raw_aws_resources" {
  type = "list"
}
variable "iam_data_zone_raw_name_prefix" {
  type = "string"
}
variable "iam_data_zone_raw_policy_description" {}

// S3 Details
variable "raw_data_zone_bucket_name" {}
variable "raw_data_zone_bucket_acl" {}
variable "curated_data_zone_bucket_name" {}
variable "curated_data_zone_bucket_acl" {}




// Common
variable "maintainer" {}
variable "maintainer_email" {}
variable "stack" {}
variable "stack_expiresat" {}
