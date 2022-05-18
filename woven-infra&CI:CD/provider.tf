terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.19.0"
    }
  }
}

provider "digitalocean" {
  # token = var.do_token
}



provider "kubernetes" {
  host             = data.digitalocean_kubernetes_cluster.cluster.endpoint
  token            = data.digitalocean_kubernetes_cluster.cluster.kube_config[0].token
  cluster_ca_certificate = base64decode(
    data.digitalocean_kubernetes_cluster.cluster.kube_config[0].cluster_ca_certificate
  )
}


provider "helm" {
    
    kubernetes {
        host = data.digitalocean_kubernetes_cluster.cluster.endpoint

        token = data.digitalocean_kubernetes_cluster.cluster.kube_config[0].token

        client_certificate = base64decode(data.digitalocean_kubernetes_cluster.cluster.kube_config[0].client_certificate)
        cluster_ca_certificate = base64decode(data.digitalocean_kubernetes_cluster.cluster.kube_config[0].cluster_ca_certificate)
        client_key = base64decode(data.digitalocean_kubernetes_cluster.cluster.kube_config[0].client_key)
}
}