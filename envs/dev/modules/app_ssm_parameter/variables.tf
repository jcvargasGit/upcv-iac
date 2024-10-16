
variable "upcv_mongodbatlas_connection" {
  description = "MongoDB user password"
  type        = string
}


variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
}