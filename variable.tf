variable "argocd_config" {
  type = any
  default = {
    hostname                  = ""
    autoscaling_enabled       = false
    redis_ha_enable           = false
    enable_argo_notifications = false
    slack_token               = ""
    values_yaml               = ""
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
