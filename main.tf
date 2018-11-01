provider "aws" {
  version = "~> 1.42"
}

module "security-kms-data-zone-raw" {
  source = "/modules/security"
//  Core definition
  kms_key_name = "${var.raw_data_zone_kms_key_name}"
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


