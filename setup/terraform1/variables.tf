

variable "sagemaker-iam-role" {
  type        = string
  description = "sagemaker iam role unique identification name"
}

variable "sagemaker-iam-policy" {
  type        = string
  description = "sagemaker iam policy unique identification name"
}

variable "sagemaker-notebook" {
  type = object({
    name          = string
    instance-type = string
  })
  description = "sagemaker notebook details"
}

variable "tags" {
  type        = map(string)
  description = "Tags to give more informations"
}

variable "s3-storage" {
  type        = list(string)
  description = "storage account to serve as database storages"
}

variable "s3-version" {
  type        = string
  description = "wheather to enable versioning on storage bucket or not"
}

variable "repository-details" {
  type = object({
    repo-name = string
    repo-url = string 
  })
  description = "github repository name and url"
}

variable "secrets" {
  type = object({
    name = string
    username = string
    password = string
  })
  description = "sagemaker repository secrets username and password"
  sensitive = true
}