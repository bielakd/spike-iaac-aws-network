variable "kms_key_name" {
  description = "Name of the KMS Key"
}

variable "kms_key_description" {
  description = "The description of the key as viewed in the AWS Console"
}

variable "kms_key_delition_window" {
  description = "Duration in days after key is deleted after object has been deleted. Default 30 days"
  default = 30
}

variable "maintainer" {}

variable "maintainer_email" {}
variable "stack" {}
variable "expiresat" {}
