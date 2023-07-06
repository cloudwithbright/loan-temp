resource "aws_sagemaker_code_repository" "loan-prediction-sagemaker-code-repo" {
  code_repository_name = var.repository-details["repo-name"]

  git_config {
    repository_url = var.repository-details["repo-url"]
    secret_arn     = aws_secretsmanager_secret.sagemaker-repo-secrets.arn
  }

  depends_on = [
    aws_secretsmanager_secret_version.sagemaker-repo-username-and-password
  ]
}
