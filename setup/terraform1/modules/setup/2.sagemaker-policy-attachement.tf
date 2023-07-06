
resource "aws_iam_role_policy_attachment" "loan-prediction-iam-policy-attachment" {
  role       = aws_iam_role.loan-prediction-iam-role.name
  policy_arn = aws_iam_policy.loan-prediction-iam-policy.arn
}
