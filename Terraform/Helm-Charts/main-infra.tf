

resource "digitalocean_kubernetes_cluster" "cluster" {
  name = var.cluster_name
  region = "nyc1"
  version = "1.21.11-do.1"
  node_pool {
    name       = var.cluster_name
    size       = "s-2vcpu-2gb"
    node_count = 1
}
}

data "digitalocean_kubernetes_cluster" "cluster" {
  name = digitalocean_kubernetes_cluster.cluster.name
}

