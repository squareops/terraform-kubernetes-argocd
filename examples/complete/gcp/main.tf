locals {
  region = "us-east-2"
  additional_tags = {
    Owner       = "organization_name"
    Expires     = "Never"
    Department  = "Engineering"
    environment = "prod"
  }
}

module "argocd" {
  source = "squareops/argocd/kubernetes"
  argocd_config = {
    hostname                     = "argocd.prod.in"
    values_yaml                  = file("./helm/values.yaml")
    redis_ha_enabled             = true
    autoscaling_enabled          = true
    slack_notification_token     = ""
    argocd_notifications_enabled = true
  }
}
