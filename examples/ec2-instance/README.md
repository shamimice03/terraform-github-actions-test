# ec2-instance

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.0.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_instance.baston_host](https://registry.terraform.io/providers/hashicorp/aws/5.0.0/docs/resources/instance) | resource |
| [aws_instance.private_node](https://registry.terraform.io/providers/hashicorp/aws/5.0.0/docs/resources/instance) | resource |
| [aws_security_group.private_sg](https://registry.terraform.io/providers/hashicorp/aws/5.0.0/docs/resources/security_group) | resource |
| [aws_security_group.public_sg](https://registry.terraform.io/providers/hashicorp/aws/5.0.0/docs/resources/security_group) | resource |
| [aws_ami.linux_ami](https://registry.terraform.io/providers/hashicorp/aws/5.0.0/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance Type | `string` | `"t3.small"` | no |
| <a name="input_private_key_location"></a> [private\_key\_location](#input\_private\_key\_location) | Location of the private key | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_node_ip"></a> [private\_node\_ip](#output\_private\_node\_ip) | IP address of privete node |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
