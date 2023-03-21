output "argocd_username" {
  description = "Argocd Username"
  value       = "admin"
}

output "argocd_password" {
  description = "Argocd Password"
  value       = nonsensitive(data.kubernetes_secret.argocd-secret.data.password)
}
