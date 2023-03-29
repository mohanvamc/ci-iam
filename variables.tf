variable "name" {
  type        = string
  description = "The name for the IAM role, policy, group, and user"
  default     = "prod-ci"
}

variable "suffix" {
  type        = string
  description = "Suffix to add to the resource names. dev/prod"
  default     = ""
}