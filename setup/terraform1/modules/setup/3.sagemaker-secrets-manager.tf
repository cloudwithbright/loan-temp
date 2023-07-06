resource "random_uuid" "generate-secret-name" {
}

resource "aws_secretsmanager_secret" "sagemaker-repo-secrets" {
  name = "${var.secrets["name"]}-${random_uuid.generate-secret-name.result}"
}

resource "aws_secretsmanager_secret_version" "sagemaker-repo-username-and-password" {
  secret_id     = aws_secretsmanager_secret.sagemaker-repo-secrets.id
  secret_string = jsonencode({ username = var.secrets["username"], password = var.secrets["password"] })
  depends_on = [
    aws_secretsmanager_secret.sagemaker-repo-secrets
  ]
}
