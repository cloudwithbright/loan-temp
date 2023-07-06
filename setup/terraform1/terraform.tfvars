
sagemaker-iam-role      = "mlproject-sagemaker-iam-role"
sagemaker-iam-policy    = "mlproject-sagemaker-iam-policy"
sagemaker-notebook = {
  name          = "mlproject-notebook"
  instance-type = "ml.t2.medium"
}

tags = {
  "deployed by" = "Owusu Bright Debrah"
  "role"        = "Cloud Engineer"
  "Email"       = "owusubrightdebrah@gmail.com"
  "purpose"     = "To setup infrastructure for data science and machine learning teams"
}
