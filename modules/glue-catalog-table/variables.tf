variable "glue_catalog_table_map" {
  type    = map(any)
  default = {}
}

variable "name_athena_database" {
  type    = string
  default = ""
}
