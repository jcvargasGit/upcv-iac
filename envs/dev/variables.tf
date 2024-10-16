variable "mongodbatlas_private_key" {
  description = "Private API key for MongoDB Atlas"
  type        = string
  sensitive   = true
}

variable "mongodbatlas_user_password" {
  description = "MongoDB user password"
  type        = string
  sensitive   = true
}

variable "upcv_mongodbatlas_connection" {
  description = "Upcv mongodbatlas connection string"
  type        = string
  sensitive   = true
}