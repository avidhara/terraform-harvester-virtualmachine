variable "name" {
  type        = string
  nullable    = false
  description = "(Required) Name of the virtual machine"
}
variable "disk" {
  type        = list(map(string))
  nullable    = false
  description = "(Required) List of disk configurations for the virtual machine"
}

variable "network_interface" {
  type        = list(map(string))
  nullable    = false
  description = "(Required) List of network interface configurations for the virtual machine"
}

variable "cloudinit" {
  type        = list(map(string))
  description = "(Required) List of cloud-init configurations for the virtual machine"
  default     = []
}

variable "cpu" {
  type        = number
  nullable    = true
  description = "(Optional) Number of CPU cores assigned to the virtual machine"
  default     = null
}
variable "cpu_pinning" {
  type        = bool
  nullable    = true
  description = "(Optional) Enable or disable CPU pinning for the virtual machine"
  default     = null
}
variable "description" {
  type        = string
  nullable    = true
  description = "(Optional) Description of the virtual machine"
  default     = null
}
variable "efi" {
  type        = bool
  nullable    = true
  description = "(Optional) Enable or disable EFI boot for the virtual machine"
  default     = null
}
variable "hostname" {
  type        = string
  nullable    = true
  description = "(Optional) Hostname of the virtual machine"
  default     = null
}
variable "id" {
  type        = string
  nullable    = true
  description = "(Optional) ID of the virtual machine"
  default     = null
}
variable "input" {
  type        = list(map(string))
  description = "(Required) List of input configurations for the virtual machine"
  default     = []
}

variable "isolate_emulator_thread" {
  type        = bool
  nullable    = true
  description = "(Optional) Enable or disable isolation of the emulator thread for the virtual machine"
  default     = null
}
variable "machine_type" {
  type        = string
  nullable    = true
  description = "(Optional) Machine type of the virtual machine"
  default     = null
}
variable "memory" {
  type        = string
  nullable    = true
  description = "(Optional) Amount of memory (in MB) assigned to the virtual machine"
  default     = null
}
variable "namespace" {
  type = string

  nullable    = true
  description = "(Optional) Namespace of the virtual machine"
  default     = null
}
variable "reserved_memory" {
  type        = number
  nullable    = true
  description = "(Optional) Amount of reserved memory (in MB) for the virtual machine"
  default     = null

}
variable "restart_after_update" {
  type        = bool
  nullable    = true
  description = "(Optional) Enable or disable automatic restart after update for the virtual machine"
  default     = null
}

variable "run_strategy" {
  type        = string
  nullable    = true
  description = "(Optional) Run strategy of the virtual machine"
  default     = null
}
variable "secure_boot" {
  type        = bool
  nullable    = true
  description = "(Optional) Enable or disable secure boot for the virtual machine"
  default     = null
}
variable "ssh_keys" {
  type        = list(string)
  nullable    = true
  description = "(Optional) List of SSH keys for the virtual machine"
  default     = null
}

variable "start" {
  type        = bool
  nullable    = true
  description = "(Optional) Whether to start the virtual machine after creation"
  default     = null
}
variable "tags" {
  type        = map(string)
  nullable    = true
  description = "(Optional) Tags to assign to the virtual machine"
  default     = {}
}
variable "timeouts" {
  type        = list(map(string))
  description = "(Required) List of timeout configurations for the virtual machine"
  default     = []
}
variable "tpm" {
  type        = list(map(string))
  description = "(Required) List of TPM configurations for the virtual machine"
  default     = []
}