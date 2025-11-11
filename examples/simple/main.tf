module "testvm" {
  source = "../../"

  name = "testvm"
  disk = [{
    name       = "rootdisk"
    type       = "disk"
    size       = "40Gi"
    bus        = "virtio"
    boot_order = 1

    image       = data.harvester_image.image.id
    auto_delete = true
  }]
  network_interface = [{
    name         = "nic-1"
    network_name = data.harvester_network.network.id
    # wait_for_lease = true
  }]
  namespace = "harvester-public"

  description = "test raw image"

  cpu    = 1
  memory = "2Gi"

}
