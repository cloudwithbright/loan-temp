
resource "aws_sagemaker_notebook_instance" "loan-prediction-sagemaker-notebook-instance" {
  name                    = var.sagemaker-notebook["name"]
  role_arn                = aws_iam_role.loan-prediction-iam-role.arn
  instance_type           = var.sagemaker-notebook["instance-type"]
  default_code_repository = aws_sagemaker_code_repository.loan-prediction-sagemaker-code-repo.code_repository_name
  tags                    = var.tags
}
