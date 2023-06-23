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
    hostname                     = "argocd.gcp.skaf.squareops.in"
    values_yaml                  = file("./helm/values.yaml")
    redis_ha_enabled             = true
    autoscaling_enabled          = true
    slack_notification_token     = "xoxb-379541400966-4559734786594-DeSE4dOlRftr02w08mtwhYLc"
    argocd_notifications_enabled = true
  }
}
