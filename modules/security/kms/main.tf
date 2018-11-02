resource "aws_kms_key" "kms_key" {
  description = "${var.kms_key_description}"
  deletion_window_in_days = "${var.kms_key_delition_window}"

  tags {
    name = "${var.kms_key_name}"
    maintainer = "${var.maintainer}"
    maintainer-email = "${var.maintainer_email}"
    stack = "${var.stack}"
    expiresAt = "${var.expiresat}"
  }
}