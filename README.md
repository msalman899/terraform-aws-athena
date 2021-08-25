# Athena

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.36 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_athena_database"></a> [athena\_database](#module\_athena\_database) | ./modules/database | n/a |
| <a name="module_glue_catalog_table"></a> [glue\_catalog\_table](#module\_glue\_catalog\_table) | ./modules/glue-catalog-table | n/a |
| <a name="module_s3_bucket_athena"></a> [s3\_bucket\_athena](#module\_s3\_bucket\_athena) | git::https://github.com/terraform-aws-modules/terraform-aws-s3-bucket.git | v2.6.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attach_bucket_policy_athena_results"></a> [attach\_bucket\_policy\_athena\_results](#input\_attach\_bucket\_policy\_athena\_results) | n/a | `bool` | `false` | no |
| <a name="input_bucket_lifecycle_rule_athena_results"></a> [bucket\_lifecycle\_rule\_athena\_results](#input\_bucket\_lifecycle\_rule\_athena\_results) | n/a | `any` | `[]` | no |
| <a name="input_bucket_name_athena_results"></a> [bucket\_name\_athena\_results](#input\_bucket\_name\_athena\_results) | n/a | `string` | `""` | no |
| <a name="input_bucket_policy_athena_results"></a> [bucket\_policy\_athena\_results](#input\_bucket\_policy\_athena\_results) | n/a | `string` | `null` | no |
| <a name="input_bucket_tags_athena_results"></a> [bucket\_tags\_athena\_results](#input\_bucket\_tags\_athena\_results) | n/a | `map(string)` | `{}` | no |
| <a name="input_create_athena_database"></a> [create\_athena\_database](#input\_create\_athena\_database) | n/a | `bool` | `false` | no |
| <a name="input_create_bucket_athena_results"></a> [create\_bucket\_athena\_results](#input\_create\_bucket\_athena\_results) | n/a | `bool` | `false` | no |
| <a name="input_encryption_configuration_athena_database"></a> [encryption\_configuration\_athena\_database](#input\_encryption\_configuration\_athena\_database) | n/a | `map(string)` | `{}` | no |
| <a name="input_glue_catalog_table_map"></a> [glue\_catalog\_table\_map](#input\_glue\_catalog\_table\_map) | n/a | `map(any)` | `{}` | no |
| <a name="input_name_athena_database"></a> [name\_athena\_database](#input\_name\_athena\_database) | n/a | `string` | `""` | no |
| <a name="input_s3_server_side_encryption_configuration_athena_results"></a> [s3\_server\_side\_encryption\_configuration\_athena\_results](#input\_s3\_server\_side\_encryption\_configuration\_athena\_results) | n/a | `any` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_athena_database_context"></a> [athena\_database\_context](#output\_athena\_database\_context) | All athena databse module output |
| <a name="output_glue_catalog_table_context"></a> [glue\_catalog\_table\_context](#output\_glue\_catalog\_table\_context) | All glue catalog table module output |
| <a name="output_s3_bucket_athena_context"></a> [s3\_bucket\_athena\_context](#output\_s3\_bucket\_athena\_context) | All s3 bucket athena module output |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->