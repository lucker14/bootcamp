terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.23.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.11.0"
    }
  }
}

provider "kubernetes" {
  # Configuration options
  config_path    = "~/.kube/config"
  config_context = "context-c724pnqstga"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }

  # localhost registry with password protection
  registry {
    url      = "oci://localhost:5000"
    username = "username"
    password = "password"
  }
}

# module "argocd" {
#   source  = "lablabs/argocd/helm"
#   version = "1.0.0"
# }

module "argocd" {
  source = "https://github.com/anarkioteam/terraform-helm-argocd"
}

