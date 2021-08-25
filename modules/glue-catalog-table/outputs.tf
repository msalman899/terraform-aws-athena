output "glue_catalog_table_context" {
  description = "All glue catalog table ids"
  value       = aws_glue_catalog_table.this.*
}
