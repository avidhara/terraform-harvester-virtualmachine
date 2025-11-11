# Terraform Module for Harvester Virtual Machine

For examples please reffer [Here](./examples/simple)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10.0 |
| <a name="requirement_harvester"></a> [harvester](#requirement\_harvester) | >= 1.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_harvester"></a> [harvester](#provider\_harvester) | 1.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [harvester_virtualmachine.this](https://registry.terraform.io/providers/harvester/harvester/latest/docs/resources/virtualmachine) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudinit"></a> [cloudinit](#input\_cloudinit) | (Required) List of cloud-init configurations for the virtual machine | `list(map(string))` | `[]` | no |
| <a name="input_cpu"></a> [cpu](#input\_cpu) | (Optional) Number of CPU cores assigned to the virtual machine | `number` | `null` | no |
| <a name="input_cpu_pinning"></a> [cpu\_pinning](#input\_cpu\_pinning) | (Optional) Enable or disable CPU pinning for the virtual machine | `bool` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) Description of the virtual machine | `string` | `null` | no |
| <a name="input_disk"></a> [disk](#input\_disk) | (Required) List of disk configurations for the virtual machine | `list(map(string))` | n/a | yes |
| <a name="input_efi"></a> [efi](#input\_efi) | (Optional) Enable or disable EFI boot for the virtual machine | `bool` | `null` | no |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | (Optional) Hostname of the virtual machine | `string` | `null` | no |
| <a name="input_id"></a> [id](#input\_id) | (Optional) ID of the virtual machine | `string` | `null` | no |
| <a name="input_input"></a> [input](#input\_input) | (Required) List of input configurations for the virtual machine | `list(map(string))` | `[]` | no |
| <a name="input_isolate_emulator_thread"></a> [isolate\_emulator\_thread](#input\_isolate\_emulator\_thread) | (Optional) Enable or disable isolation of the emulator thread for the virtual machine | `bool` | `null` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | (Optional) Machine type of the virtual machine | `string` | `null` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | (Optional) Amount of memory (in MB) assigned to the virtual machine | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Name of the virtual machine | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | (Optional) Namespace of the virtual machine | `string` | `null` | no |
| <a name="input_network_interface"></a> [network\_interface](#input\_network\_interface) | (Required) List of network interface configurations for the virtual machine | `list(map(string))` | n/a | yes |
| <a name="input_reserved_memory"></a> [reserved\_memory](#input\_reserved\_memory) | (Optional) Amount of reserved memory (in MB) for the virtual machine | `number` | `null` | no |
| <a name="input_restart_after_update"></a> [restart\_after\_update](#input\_restart\_after\_update) | (Optional) Enable or disable automatic restart after update for the virtual machine | `bool` | `null` | no |
| <a name="input_run_strategy"></a> [run\_strategy](#input\_run\_strategy) | (Optional) Run strategy of the virtual machine | `string` | `null` | no |
| <a name="input_secure_boot"></a> [secure\_boot](#input\_secure\_boot) | (Optional) Enable or disable secure boot for the virtual machine | `bool` | `null` | no |
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | (Optional) List of SSH keys for the virtual machine | `list(string)` | `null` | no |
| <a name="input_start"></a> [start](#input\_start) | (Optional) Whether to start the virtual machine after creation | `bool` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Tags to assign to the virtual machine | `map(string)` | `{}` | no |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | (Required) List of timeout configurations for the virtual machine | `list(map(string))` | `[]` | no |
| <a name="input_tpm"></a> [tpm](#input\_tpm) | (Required) List of TPM configurations for the virtual machine | `list(map(string))` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->