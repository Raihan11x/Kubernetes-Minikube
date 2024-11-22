terraform{
    required_providers {
        minikube = {
            source = "scott-the-programmer/minikube"
            version = "0.4.2"
        }
    }
}

provider "minikube" {
    kubernetes_version = "v1.30.0"
}

resource "minikube_cluster" "minikube_dckr" {
    driver = "docker"
    cluster_name = "complete-devops"
    addons = [
        "default-storageclass",
        "storage-provisioner"
    ]
}

