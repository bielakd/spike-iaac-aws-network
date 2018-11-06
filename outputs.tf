output "kms_data_raw_arn" {
  value = "${module.security-kms-data-zone-raw.kms_arn}"
}
output "s3_data_zone_raw_bucket" {
  value = "${module.storage-s3-data-zone-raw.s3_bucket}"
}