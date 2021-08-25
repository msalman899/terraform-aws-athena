output "athena_database_name" {
  description = "Athena database name"
  value       = try(aws_athena_database.this[0].id, null)
}
