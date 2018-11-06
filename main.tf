provider "aws" {
  version = "~> 1.42"
  profile = "${var.profile}"
}

module "security-kms-data-zone-raw" {
  source = "/modules/security/kms"
//  Core definition
  kms_key_name = "${var.raw_data_zone_kms_key_name}"
  kms_key_description = "Key used with raw data zone"
//  Tags
  maintainer = "${var.maintainer}"
  maintainer_email = "${var.maintainer_email}"
  stack = "${var.stack}"
  expiresat = "${var.stack_expiresat}"
}

//module "iam-policy-s3-ssl-all"{
//  source = "/modules/iam/policy"
//  policy_id = "${var.iam_data_zone_raw_policy_id}"
//  principal_identifiers = "${var.iam_data_zone_raw_principal_identifiers}"
//  principal_type = "${var.iam_data_zone_raw_principal_type}"
//  policy_effect = "${var.iam_data_zone_raw_effect}"
//  policy_actions = "${var.iam_data_zone_raw_actions}"
//  aws_resources = "${var.iam_data_zone_raw_aws_resources}"
//  iam_policy_name_prefix = "${var.iam_data_zone_raw_name_prefix}"
//  iam_policy_description = "${var.iam_data_zone_raw_policy_description}"
//
//}

module "security-kms-data-zone-curated" {
  source = "/modules/security/kms"
  //  Core definition
  kms_key_name = "${var.curated_data_zone_kms_key_name}"
  kms_key_description = "Key used with raw data zone"
  //  Tags
  maintainer = "${var.maintainer}"
  maintainer_email = "${var.maintainer_email}"
  stack = "${var.stack}"
  expiresat = "${var.stack_expiresat}"
}


module "storage-s3-data-zone-raw" {
  source = "/modules/storage/s3"
//  Core definitions
  bucket_name = "${var.raw_data_zone_bucket_name}"
  bucket_acl = "${var.raw_data_zone_bucket_acl}"
  kms_key_arn = "${module.security-kms-data-zone-raw.kms_arn}"
  //  Tags
  maintainer = "${var.maintainer}"
  maintainer_email = "${var.maintainer_email}"
  stack = "${var.stack}"
  expiresat = "${var.stack_expiresat}"
}

module "storage-s3-data-zone-raw-bu"{
  source = "/modules/storage/s3_object"
  bucket = "${module.storage-s3-data-zone-raw.s3_bucket}"
  bucket_key = "${var.raw_data_zone_bu_key}"
}

module "storage-s3-data-zone-curated" {
  source = "/modules/storage/s3"
  //  Core definitions
  bucket_name = "${var.curated_data_zone_bucket_name}"
  bucket_acl = "${var.curated_data_zone_bucket_acl}"
  kms_key_arn = "${module.security-kms-data-zone-curated.kms_arn}"
  //  Tags
  maintainer = "${var.maintainer}"
  maintainer_email = "${var.maintainer_email}"
  stack = "${var.stack}"
  expiresat = "${var.stack_expiresat}"
}


