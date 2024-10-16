resource "mongodbatlas_project" "upcv" {
  name   = "upcv-development"
  org_id = var.mongodbatlas_org_id
}

resource "mongodbatlas_project_ip_access_list" "ip_access_list" {
  project_id = mongodbatlas_project.upcv.id
  ip_address = "186.82.100.1"
}

resource "mongodbatlas_database_user" "root" {
  project_id         = mongodbatlas_project.upcv.id
  username           = "root"
  password           = var.mongodbatlas_user_password
  auth_database_name = "admin"
  roles {
    role_name     = "readWrite"
    database_name = "upcv"
  }
}

resource "mongodbatlas_cluster" "upcv_development" {
  project_id                  = mongodbatlas_project.upcv.id
  name                        = "upcv-cluster"
  provider_name               = "TENANT"
  backing_provider_name       = "AWS"
  provider_region_name        = "US_EAST_1"
  provider_instance_size_name = "M0"
}
