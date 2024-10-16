
resource "aws_ssm_parameter" "upcv_mongodbatlas_connection" {
  name  = "/upcv/mongodb/connection"
  type  = "SecureString"
  value = var.upcv_mongodbatlas_connection
  tags = var.tags
}
