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
    hostname                  = "argoc.ref.stg.skaf.squareops.in"
    autoscaling_enabled       = true
    redis_ha_enable           = true
    enable_argo_notifications = true
    slack_token               = "xoxb-379541400966-4559734786594-qQ8486bluEuvmxrYxRatsM8R"
    values_yaml               = file("./helm/values.yaml")
  }
}
