resource "aws_s3_bucket" "default" {
  bucket = "${var.bucket_name}"
  acl = "${var.bucket_acl}"
  server_side_encryption_configuration {
    "rule" {
      "apply_server_side_encryption_by_default" {
        kms_master_key_id = "${var.kms_key_arn}"
        sse_algorithm = "aws:kms"
      }
    }
  }

  tags {
    name = "${var.bucket_name}"
    maintainer = "${var.maintainer}"
    maintainer-email = "${var.maintainer_email}"
    stack = "${var.stack}"
    expiresAt = "${var.expiresat}"
  }
}