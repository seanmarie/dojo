resource "digitalocean_droplet" "lucy" {
  image = "ubuntu-18-04-x64"
  name = "lucy"
  region = "nyc1"
  size = "s-1vcpu-1gb"
  private_networking = true
  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]
}
