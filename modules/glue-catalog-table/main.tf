resource "aws_glue_catalog_table" "this" {
  for_each = var.glue_catalog_table_map

  name          = replace(each.key, "/\\.|\\-/", "_")
  database_name = lookup(each.value, "database_name", var.name_athena_database)
  catalog_id    = data.aws_caller_identity.current.account_id
  description   = lookup(each.value, "description", null)
  table_type    = lookup(each.value, "table_type", "EXTERNAL_TABLE")
  parameters    = lookup(each.value, "parameters", null)

  dynamic "partition_keys" {
    for_each = flatten(lookup(each.value, "partition_keys", []))
    content {
      name    = partition_keys.value["name"]
      type    = lookup(partition_keys.value, "type", null)
      comment = lookup(partition_keys.value, "comment", null)
    }
  }

  dynamic "storage_descriptor" {
    for_each = length(keys(lookup(each.value, "storage_descriptor", {}))) == 0 ? [] : [each.value["storage_descriptor"]]
    content {
      location      = lookup(storage_descriptor.value, "location")
      input_format  = lookup(storage_descriptor.value, "input_format", null)
      output_format = lookup(storage_descriptor.value, "output_format", null)

      dynamic "ser_de_info" {
        for_each = length(keys(lookup(storage_descriptor.value, "ser_de_info", {}))) == 0 ? [] : [storage_descriptor.value["ser_de_info"]]
        content {
          name                  = lookup(ser_de_info.value, "name", null)
          serialization_library = lookup(ser_de_info.value, "serialization_library", null)
          parameters            = lookup(ser_de_info.value, "parameters", null)
        }
      }

      dynamic "columns" {
        for_each = flatten(lookup(storage_descriptor.value, "columns", []))
        content {
          name       = columns.value["name"]
          type       = lookup(columns.value, "type", null)
          comment    = lookup(columns.value, "comment", null)
          parameters = lookup(columns.value, "parameters", null)
        }
      }
    }

  }
}
