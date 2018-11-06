resource "aws_s3_bucket_object" "default" {
  bucket = "${var.bucket}"
  key = "${var.bucket_key}"
  content=" "
}