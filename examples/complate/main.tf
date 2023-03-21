locals {
  region = "us-east-2"
  additional_tags = {
    Name        = "skaf"
    environment = "prod"
  }
}

module "argocd" {
  source = "../../"
  argocd_config = {
    hostname                  = "argoc.squareops.in"
    autoscaling_enabled       = true
    redis_ha_enable           = true
    enable_argo_notifications = true
    slack_token               = "xoxb-qQ8486bluEuvmxrYx"
    values_yaml               = file("./helm/values.yaml")
  }
}
