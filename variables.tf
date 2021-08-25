#------------------------------------------------------------------------------
# common
#------------------------------------------------------------------------------

variable "tags" {
  type    = map(string)
  default = {}
}

#------------------------------------------------------------------------------
# athena results s3 bucket
#------------------------------------------------------------------------------


variable "create_bucket_athena_results" {
  type    = bool
  default = false
}

variable "attach_bucket_policy_athena_results" {
  type    = bool
  default = false
}

variable "bucket_name_athena_results" {
  type    = string
  default = ""
}

variable "bucket_lifecycle_rule_athena_results" {
  type    = any
  default = []
}

variable "s3_server_side_encryption_configuration_athena_results" {
  type    = any
  default = {}
}

variable "bucket_policy_athena_results" {
  type    = string
  default = null
}

variable "bucket_tags_athena_results" {
  type    = map(string)
  default = {}
}

#------------------------------------------------------------------------------
# athena database module 
#------------------------------------------------------------------------------

variable "create_athena_database" {
  type    = bool
  default = false
}

variable "name_athena_database" {
  type    = string
  default = ""
}

variable "encryption_configuration_athena_database" {
  type    = map(string)
  default = {}
}

#------------------------------------------------------------------------------
# glue catalog table
#------------------------------------------------------------------------------

variable "glue_catalog_table_map" {
  type    = map(any)
  default = {}
}
