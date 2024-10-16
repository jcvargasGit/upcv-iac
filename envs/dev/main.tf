terraform {
  required_version = ">= 1.2.0"
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "~> 1.20.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "mongodbatlas" {
  public_key  = "jwotizxc"
  private_key = var.mongodbatlas_private_key
}

module "mongo_database" {
  source                     = "./modules/database"
  mongodbatlas_org_id        = "66f9bae30bdc6b34cde8bb4e"
  mongodbatlas_user_password = var.mongodbatlas_user_password
  providers = {
    mongodbatlas = mongodbatlas
  }
}


module "app_ssm_parameter" {
  source                       = "./modules/app_ssm_parameter"
  upcv_mongodbatlas_connection = var.upcv_mongodbatlas_connection

  tags = {
    Environment = "dev"
    Project     = "upcv"
  }

  providers = {
    aws = aws
  }
}

