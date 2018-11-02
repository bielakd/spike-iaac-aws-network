output "iam_policy_arn" {
  value = "${aws_iam_policy.iam_policy.arn}"
}
output "iam_policy_document"{
  value = "${aws_iam_policy.iam_policy.policy}"
}