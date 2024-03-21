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
  description = "Specify the configuration settings for Argocd, including the hostname, redis_ha_enabled, autoscaling, notification settings, and custom YAML values."
}

variable "chart_version" {
  type        = string
  default     = "6.7.0"
  description = "Version of the Argocd chart that will be used to deploy Argocd application."
}

variable "namespace" {
  type        = string
  default     = "argocd"
  description = "Name of the Kubernetes namespace where the Argocd deployment will be deployed."
}
