
output "sagemaker-notebook-url" {
  value = "https://${module.setup.sagemaker-notebook-url}"
}

output "storage-names" {
  value = module.setup.storage-names
}
