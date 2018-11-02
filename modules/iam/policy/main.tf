data "aws_iam_policy_document" "policy_document" {
  policy_id = "${var.policy_id}"
  statement {
    condition {
      test = "${var.policy_condition_type}"
      values = "${var.policy_condition_values}"
      variable = "${var.policy_condition_variable}"
    }
    principals {
      identifiers = "${var.principal_identifiers}"
      type = "${var.principal_type}"
    }

    effect = "${var.policy_effect}"
    actions = "${var.policy_actions}"
    resources = "${var.aws_resources}"
  }
}

resource "aws_iam_policy" "iam_policy" {

  name_prefix = "${var.iam_policy_name_prefix}"
  description = "${var.iam_policy_description}}"
  policy = "${data.aws_iam_policy_document}"
}

