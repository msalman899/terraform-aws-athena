resource "aws_athena_database" "this" {
  count  = var.create_database ? 1 : 0
  name   = var.name_athena_database
  bucket = var.bucket_name

  dynamic "encryption_configuration" {
    for_each = length(keys(var.encryption_configuration)) == 0 ? [] : [var.encryption_configuration]
    content {
      encryption_option = lookup(encryption_configuration.value, "encryption_option", "SSE_S3")
      kms_key           = lookup(encryption_configuration.value, "kms_key", null)
    }
  }
}
