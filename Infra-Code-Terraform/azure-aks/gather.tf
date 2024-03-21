data "vault_kv_secret_v2" "example" {
  provider = vault.approle
  mount = "secrets"
  name  = "az-aks"
}