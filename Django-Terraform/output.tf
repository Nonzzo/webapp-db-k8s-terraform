output "kubernetes_cluster_output" {
    value = data.digitalocean_kubernetes_cluster.cluster.ipv4_address
}

output "kubernetes_cluster_kubeconfig" {
    value = data.digitalocean_kubernetes_cluster.cluster.kube_config[0].raw_config
}

output "kubernetes_cluster_client_cert" {
    value = data.digitalocean_kubernetes_cluster.cluster.kube_config[0].client_certificate
}
# output "kubernetes_cluster_client-cert.pem" {
#     value = data.digitalocean_kubernetes_cluster.cluster.kube_config[0].cluster_client_certificate
# }

# output "kubernetes_cluster_ca-cert.pem" {
#     value = data.digitalocean_kubernetes_cluster.cluster.kube_config[0].cluster_ca_certificate
# }