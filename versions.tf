terraform {
  required_version = ">= 1.10.0"

  required_providers {
    harvester = {
      source  = "harvester/harvester"
      version = ">= 1.4.0"
    }
  }
}
