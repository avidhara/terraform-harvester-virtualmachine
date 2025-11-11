# Example

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_harvester"></a> [harvester](#requirement\_harvester) | >= 1.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_harvester"></a> [harvester](#provider\_harvester) | 1.6.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_testvm"></a> [testvm](#module\_testvm) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [harvester_image.image](https://registry.terraform.io/providers/harvester/harvester/latest/docs/data-sources/image) | data source |
| [harvester_network.network](https://registry.terraform.io/providers/harvester/harvester/latest/docs/data-sources/network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | The name of the image to use for the VM. | `string` | `"ubuntu-22.04-cloudimg.qcow2"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace to use for the VM. | `string` | `"suse-mlm"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_id"></a> [network\_id](#output\_network\_id) | ID of the Network |
| <a name="output_output_id"></a> [output\_id](#output\_output\_id) | ID of the Virtual Machine image |
<!-- END_TF_DOCS -->