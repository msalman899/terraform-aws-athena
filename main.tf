module "s3_bucket_athena" {
  source                               = "git::https://github.com/terraform-aws-modules/terraform-aws-s3-bucket.git?ref=v2.6.0"
  create_bucket                        = var.create_bucket_athena_results
  bucket                               = var.bucket_name_athena_results
  acl                                  = "private"
  attach_public_policy                 = "true"
  block_public_acls                    = "true"
  block_public_policy                  = "true"
  restrict_public_buckets              = "true"
  ignore_public_acls                   = "true"
  lifecycle_rule                       = var.bucket_lifecycle_rule_athena_results
  server_side_encryption_configuration = var.s3_server_side_encryption_configuration_athena_results
  attach_policy                        = var.attach_bucket_policy_athena_results
  policy                               = var.bucket_policy_athena_results
  tags                                 = merge(var.tags, var.bucket_tags_athena_results)
}

module "athena_database" {
  source                   = "./modules/database"
  create_database          = var.create_athena_database
  name_athena_database     = var.name_athena_database
  bucket_name              = var.create_bucket_athena_results ? module.s3_bucket_athena.s3_bucket_id : var.bucket_name_athena_results
  encryption_configuration = var.encryption_configuration_athena_database
}

module "glue_catalog_table" {
  source                 = "./modules/glue-catalog-table"
  glue_catalog_table_map = var.glue_catalog_table_map
  name_athena_database   = var.create_athena_database ? module.athena_database.athena_database_name : var.name_athena_database
}
