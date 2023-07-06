# Have added small comment thanks
module "setup" {
  source                  = "./modules/setup"
  sagemaker-iam-role      = var.sagemaker-iam-role
  sagemaker-iam-policy    = var.sagemaker-iam-policy
  sagemaker-notebook      = var.sagemaker-notebook
  tags                    = var.tags
  s3-storage              = var.s3-storage
  s3-version              = var.s3-version
  repository-details      = var.repository-details
  secrets                 = var.secrets
}
