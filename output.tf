output "argocd" {
  description = "Information about the ArgoCD, including the username, password, and URL."
  value = {
    username = "admin",
    password = nonsensitive(data.kubernetes_secret.argocd-secret.data.password),
    url      = var.argocd_config.hostname
  }
}
