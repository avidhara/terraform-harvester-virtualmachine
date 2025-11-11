variable "image_name" {
  type        = string
  description = "The name of the image to use for the VM."
  default     = "ubuntu-22.04-cloudimg.qcow2"
}

variable "kubeconfig" {
  type        = string
  description = "The path to the kubeconfig file."
}
