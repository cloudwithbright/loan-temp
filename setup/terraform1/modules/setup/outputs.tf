
output "sagemaker-notebook-url" {
  value = aws_sagemaker_notebook_instance.loan-prediction-sagemaker-notebook-instance.url
}

output "storage-names" {
  value = [for bucket in aws_s3_bucket.sagemaker-storage-buckets : bucket.bucket]
}