output "s3_bucket_athena_context" {
  description = "All s3 bucket athena module output"
  value       = module.s3_bucket_athena
}

output "athena_database_context" {
  description = "All athena databse module output"
  value       = module.athena_database
}


output "glue_catalog_table_context" {
  description = "All glue catalog table module output"
  value       = module.glue_catalog_table
}
