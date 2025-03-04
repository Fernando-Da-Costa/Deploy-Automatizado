variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}

variable "environment" {
  description = "Ambiente (DEV, STAGING, PROD)"
  type        = string
}
