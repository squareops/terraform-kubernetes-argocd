variable "argocd_config" {
  type = any
  default = {
    hostname                     = ""
    values_yaml                  = ""
    redis_ha_enabled             = false
    autoscaling_enabled          = false
    slack_notification_token     = ""
    argocd_notifications_enabled = false
  }
  description = "Argocd configurations"
}

variable "chart_version" {
  type        = string
  default     = "5.4.0"
  description = "Enter chart version of application"
}

variable "namespace" {
  type        = string
  default     = "argocd"
  description = "Enter namespace name"
}
