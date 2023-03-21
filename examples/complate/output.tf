output "username" {
  description = "Argocd Username"
  value       = "admin"
}

output "password" {
  description = "password"
  value       = module.argocd.argocd_password
}
