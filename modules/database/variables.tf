variable "create_database" {
  type    = bool
  default = false
}

variable "name_athena_database" {
  type    = string
  default = ""
}

variable "bucket_name" {
  type    = string
  default = ""
}

variable "encryption_configuration" {
  type    = map(string)
  default = {}
}
