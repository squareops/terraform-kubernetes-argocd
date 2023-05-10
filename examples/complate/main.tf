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
  source        = "https://github.com/sq-ia/terraform-kubernetes-argocd.git"
  argocd_config = {
    hostname                     = "argocd.ref.dev.skaf.squareops.in"
    values_yaml                  = file("./helm/values.yaml")
    redis_ha_enabled             = true
    autoscaling_enabled          = true
    slack_notification_token     = "xoxb-qQ8486bluEuvmxrYx"
    argocd_notifications_enabled = true
  }
}
