terraform {
  required_version = ">= 1.2.0"
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "~> 1.20.0"
    }
  }
}