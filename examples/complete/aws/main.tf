locals {
  region = "ap-south-1"
  additional_tags = {
    Owner       = "organization_name"
    Expires     = "Never"
    Department  = "Engineering"
    environment = "prod"
  }
}

module "argocd" {
  # source = "squareops/argocd/kubernetes"
  source = "../../../"
  argocd_config = {
    hostname                     = "argocd-test.ldc.squareops.in"
    values_yaml                  = file("./helm/values.yaml")
    redis_ha_enabled             = true
    autoscaling_enabled          = true
    slack_notification_token     = "xoxb-379541400966-iibMHnnoaPzVl"
    argocd_notifications_enabled = true
  }
}
