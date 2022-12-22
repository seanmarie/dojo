terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "1.22.2"
    }
    google = {
      source = "hashicorp/google"
      version = "4.47.0"
    }
    cloudflare = {
      source,= "cloudflare/cloudflare"
      version = "3.30.0"
    }
  }
}

variable "do_token" {}
variable "pvt_key" {}

provider "digitalocean" {
  token = var.do_token
}

provider "google" {
  project = "dojo-372403"
}

provider "cloudflare" {
}

data "digitalocean_account" "example" {
}

data "digitalocean_ssh_key" "terraform" {
  name = "dojo"
}
