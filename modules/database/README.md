# Module Athena Database

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
| [aws_athena_database.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_database) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | n/a | `string` | `""` | no |
| <a name="input_create_database"></a> [create\_database](#input\_create\_database) | n/a | `bool` | `false` | no |
| <a name="input_encryption_configuration"></a> [encryption\_configuration](#input\_encryption\_configuration) | n/a | `map(string)` | `{}` | no |
| <a name="input_name_athena_database"></a> [name\_athena\_database](#input\_name\_athena\_database) | n/a | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_athena_database_name"></a> [athena\_database\_name](#output\_athena\_database\_name) | Athena database name |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->