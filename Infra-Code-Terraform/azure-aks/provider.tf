terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = "true"
  features {}
}

provider "vault" {
  address          = "http://13.93.146.203:8200"
  skip_child_token = true
  alias = "approle"
  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id   = var.role_id
      secret_id = var.secret_id
    }
  }
}

provider "vault" {
  alias            = "main"
  address          = "http://13.93.146.203:8200"
  skip_child_token = true
}