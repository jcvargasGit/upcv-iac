variable "mongodbatlas_org_id" {
  description = "Organization id for the MongoDB Atlas project"
  type        = string
}

variable "mongodbatlas_user_password" {
  description = "MongoDB user password"
  type        = string
  sensitive   = true
}


