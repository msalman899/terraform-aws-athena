# Module Glue Catalog Table

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.36 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.36 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_glue_catalog_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_catalog_table) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_glue_catalog_table_map"></a> [glue\_catalog\_table\_map](#input\_glue\_catalog\_table\_map) | n/a | `map(any)` | `{}` | no |
| <a name="input_name_athena_database"></a> [name\_athena\_database](#input\_name\_athena\_database) | n/a | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_glue_catalog_table_context"></a> [glue\_catalog\_table\_context](#output\_glue\_catalog\_table\_context) | All glue catalog table ids |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->