output "argocd" {
  description = "Argocd_Info"
  value = {
    username = "admin",
    password = nonsensitive(data.kubernetes_secret.argocd-secret.data.password),
    url      = var.argocd_config.hostname
  }
}
