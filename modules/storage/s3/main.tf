data "aws_iam_policy_document" "s3_ssl_connectivity"{
  statement {
    sid = "BucketAccess_SSL"
    effect = "Deny"
    principals {
      identifiers = ["*"]
      type = "AWS"
    }
    actions = ["s3:GetObject"]
    resources = ["arn:aws:s3:::${var.bucket_name}/*"]
    condition {
      test = "Bool"
      variable = "aws:SecureTransport"
      values = ["false"]
    }
  }
}

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

resource "aws_s3_bucket_policy" "s3_ssl_access_policy" {
  bucket = "${aws_s3_bucket.default.bucket}"
  policy = "${data.aws_iam_policy_document.s3_ssl_connectivity.json}"
}