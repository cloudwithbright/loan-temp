resource "aws_iam_policy" "loan-prediction-iam-policy" {
  name   = var.sagemaker-iam-policy
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "CodeCommitFullAccess",
      "Effect": "Allow",
      "Action": "codecommit:*",
      "Resource": "*"
    },
    {
      "Sid": "SageMakerFullAccess",
      "Effect": "Allow",
      "Action": "sagemaker:*",
      "Resource": "*"
    },
    	{
			"Sid": "s3FullAccess",
			"Effect": "Allow",
			"Action": "s3:*",
			"Resource": "*"
		}
  ]
}
EOF
}
