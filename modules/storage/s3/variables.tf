variable "bucket_name" {
  description = "Name of the bucket"
}
variable "bucket_acl" {
  description = "ACL for a given bucket"
  default = "private"
}
variable "maintainer" {
  description = "Details of the team which is responsible for the maintenance of this resource"
}
variable "maintainer_email" {
  description = "Email of the team whic is responsible for the maintenance of this resource"
}
variable "stack" {
  description = "Indicates the stack for which this resource has been created {DEV, UAT, PROD}"
}
variable "expiresat" {
  description = "Indicates when the resource is to be removed"
}
variable "kms_key_arn" {
  description = "KMS key arn used to encrypt data at rest"
}