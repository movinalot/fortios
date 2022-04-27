terraform {
  required_providers {
    fortios = {
      source = "fortinetdev/fortios"
    }
  }
  required_version = ">= 1.0.0"
}

provider "fortios" {
  hostname = var.hostname_a
  token    = var.token
  insecure = var.insecure
  alias    = "fgta"
}

provider "fortios" {
  hostname = var.hostname_b
  token    = var.token
  insecure = var.insecure
  alias    = "fgtb"
}