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

    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
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
}

module "argocd" {
  source  = "aigisuk/argocd/kubernetes"
  version = "0.2.7"
}

