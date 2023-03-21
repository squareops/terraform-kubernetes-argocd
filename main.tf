resource "kubernetes_namespace" "argocd" {

  metadata {
    name = var.namespace
  }
}

resource "helm_release" "argocd_deploy" {
  depends_on = [kubernetes_namespace.argocd]

  name       = "argo-cd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  namespace  = var.namespace
  timeout    = 600
  version    = var.chart_version

  values = [
    templatefile("${path.module}/helm/values/values.yaml", {
      hostname                  = var.argocd_config.hostname
      redis_ha_enable           = var.argocd_config.redis_ha_enable
      autoscaling_enabled       = var.argocd_config.autoscaling_enabled
      enable_argo_notifications = var.argocd_config.enable_argo_notifications
      slack_token               = var.argocd_config.slack_token
    }),
    var.argocd_config.values_yaml
  ]
}

data "kubernetes_secret" "argocd-secret" {
  depends_on = [helm_release.argocd_deploy]
  metadata {
    name      = "argocd-initial-admin-secret"
    namespace = var.namespace
  }
}
