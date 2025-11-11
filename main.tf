resource "harvester_virtualmachine" "this" {
  name = var.name

  # Add dynamic block for disk
  dynamic "disk" {
    for_each = var.disk

    content {
      name                 = disk.value.name
      access_mode          = lookup(disk.value, "access_mode", null)
      auto_delete          = lookup(disk.value, "auto_delete", null)
      boot_order           = lookup(disk.value, "boot_order", null)
      bus                  = lookup(disk.value, "bus", null)
      container_image_name = lookup(disk.value, "container_image_name", null)
      existing_volume_name = lookup(disk.value, "existing_volume_name", null)
      hot_plug             = lookup(disk.value, "hot_plug", null)
      image                = lookup(disk.value, "image", null)
      size                 = lookup(disk.value, "size", null)
      storage_class_name   = lookup(disk.value, "storage_class_name", null)
      type                 = lookup(disk.value, "type", null)
      volume_mode          = lookup(disk.value, "volume_mode", null)
      volume_name          = lookup(disk.value, "volume_name", null)
    }
  }

  dynamic "network_interface" {
    for_each = var.network_interface

    content {
      name           = network_interface.value.name
      boot_order     = lookup(network_interface.value, "boot_order", null)
      model          = lookup(network_interface.value, "model", null)
      network_name   = lookup(network_interface.value, "network_name", null)
      type           = lookup(network_interface.value, "type", null)
      wait_for_lease = lookup(network_interface.value, "wait_for_lease", null)


    }
  }

  dynamic "cloudinit" {
    for_each = var.cloudinit

    content {
      network_data             = lookup(cloudinit.value, "network_data", null)
      network_data_base64      = lookup(cloudinit.value, "network_data_base64", null)
      network_data_secret_name = lookup(cloudinit.value, "network_data_secret_name", null)
      type                     = lookup(cloudinit.value, "type", null)
      user_data                = lookup(cloudinit.value, "user_data", null)
      user_data_base64         = lookup(cloudinit.value, "user_data_base64", null)
      user_data_secret_name    = lookup(cloudinit.value, "user_data_secret_name", null)
    }
  }
  cpu         = var.cpu
  cpu_pinning = var.cpu_pinning
  description = var.description
  efi         = var.efi
  hostname    = var.hostname
  # id          = var.id
  dynamic "input" {
    for_each = var.input

    content {
      name = input.value.name
      bus  = lookup(input.value, "bus", null)
      type = lookup(input.value, "type", null)
    }

  }

  isolate_emulator_thread = var.isolate_emulator_thread
  machine_type            = var.machine_type
  memory                  = var.memory
  namespace               = var.namespace
  reserved_memory         = var.reserved_memory
  restart_after_update    = var.restart_after_update
  run_strategy            = var.run_strategy

  secure_boot = var.secure_boot
  ssh_keys    = var.ssh_keys
  start       = var.start
  tags        = var.tags

  dynamic "timeouts" {
    for_each = var.timeouts

    content {
      create  = lookup(timeouts.value, "create", null)
      default = lookup(timeouts.value, "default", null)
      delete  = lookup(timeouts.value, "delete", null)
      read    = lookup(timeouts.value, "read", null)
      update  = lookup(timeouts.value, "update", null)
    }
  }
  dynamic "tpm" {
    for_each = var.tpm

    content {
      name = tpm.value.name
    }

  }

}