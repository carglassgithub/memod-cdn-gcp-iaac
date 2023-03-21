variable "project_id" {
  type        = string
  description = "The project id on GCP"
  default     = "default"
}

variable "bucket_name" {
  type        = string
  description = "The bucket name"
  default     = "default"
}

variable "cdn_domain" {
  type        = string
  description = "The CDN domain"
  default     = "default@example.com"
}

# variable "network_name" {
#   type        = string
#   description = "The network name"
#   default     = "default"
# }

# variable "network_private_subnet_name" {
#   type        = string
#   description = "The network's private subnet name"
#   default     = "default"
# }

# variable "service_account_id" {
#   type        = string
#   description = "Service Account Id"
#   default     = "23234234235245345345"
# }