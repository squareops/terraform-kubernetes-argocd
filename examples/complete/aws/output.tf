output "argocd_credentials" {
  value       = module.argocd.argocd
  description = "Information about the ArgoCD, including the username, password, and URL."
}
