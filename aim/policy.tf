data "aws_iam_policy_document" "icg_glue_resource"{
	statement {
		sid = "1"
		effect ="Allow"
		actions = [
			"glue:*",
			"s3:GetBucketLocation",
			"s3:ListBucket",
			"s3:ListAllMyBuckets",
			"s3:GetBucketAcl",
			"ec2:DescribeVpcEndpoints",
			"ec2:DescribeRouteTables",	
			"ec2:CreateNetworkInterface",
			"ec2:DeleteNetworkInterface",
			"ec2:DescribeSecurityGroups",
			"ec2:DescribeSubnets",
			"ec2:DescribeVpcAttribute",
			"iam:ListRolePolicies",
			"iam:GetRole",
			"cloudwatch:PutMetricData"
		],
		resources = [
			"*"
		]
	}
}
