provider "kubernetes" {
    host = minikube_cluster.minikube_dckr.host
    client_certificate = minikube_cluster.minikube_dckr.client_certificate
    client_key = minikube_cluster.minikube_dckr.client_key
    cluster_ca_certificate = minikube_cluster.minikube_dckr.cluster_ca_certificate
}

provider "helm" {
    kubernetes {
        config_path = "~/.kube/config"
    }
}