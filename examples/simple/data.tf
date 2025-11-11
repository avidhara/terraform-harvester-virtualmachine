data "harvester_image" "image" {
  #   name      = var.image_name
  display_name = var.image_name
  namespace    = "harvester-public"
}

### Network
data "harvester_network" "network" {
  name      = "net-external"
  namespace = "harvester-public"
}