terraform {
  required_providers {
    harvester = {
      source  = "harvester/harvester"
      version = ">= 1.4.0"
    }
  }
}

provider "harvester" {
  # Path to kubeconfig file
  kubeconfig  = var.kubeconfig
  kubecontext = "local"
}
