# Kubernetes Minikube Setup

This repository contains the setup and configuration for running a Kubernetes cluster locally using **Minikube**. Minikube is a tool that allows you to run Kubernetes clusters on your local machine for development and testing purposes.

## 🚀 Getting Started

Follow the steps below to set up Minikube and start a Kubernetes cluster on your local machine.

### Prerequisites

Before you begin, ensure that you have the following tools installed:

- **Minikube**: A tool for running Kubernetes clusters locally.
- **kubectl**: The Kubernetes command-line tool to interact with your cluster.
- **Virtualisation Software**: Minikube requires virtualisation software like **VirtualBox**, **VMware**, or **HyperKit** (macOS) for running the cluster.

### Installation

1. **Install Minikube**:
   - Follow the instructions for your OS from the official Minikube [installation guide](https://minikube.sigs.k8s.io/docs/).
   - For example, on macOS, you can use Homebrew:
     ```
     brew install minikube
     ```

2. **Install kubectl**:
   - kubectl is needed to interact with your Minikube Kubernetes cluster.
   - You can install it using Homebrew:
     ```
     brew install kubectl
     ```
   - Alternatively, follow the official kubectl installation guide [here](https://kubernetes.io/docs/tasks/tools/install-kubectl/).

3. **Start Minikube**:
   - Once the dependencies are installed, you can start Minikube using the following command:
     ```
     minikube start
     ```
   - Minikube will automatically create a virtual machine, download Kubernetes components, and set up your local cluster.

4. **Verify the Cluster**:
   - Once Minikube starts, you can verify that your Kubernetes cluster is up and running by checking the status of your nodes:
     ```
     kubectl get nodes
     ```

5. **Access the Kubernetes Dashboard (Optional)**:
   - Minikube comes with an optional web-based Kubernetes dashboard. You can open it with:
     ```
     minikube dashboard
     ```
   - This command will open the dashboard in your default browser, where you can monitor and interact with your cluster visually.

## 💡 Usage

- **Kubectl Commands**: Use `kubectl` to interact with your Kubernetes cluster. Here are some common commands:
  - **Get cluster info**: 
    ```
    kubectl cluster-info
    ```
  - **Get all pods**:
    ```
    kubectl get pods --all-namespaces
    ```
  - **Get services**:
    ```
    kubectl get services
    ```

- **Accessing Applications**: You can expose applications running on Minikube using the following command to create a service:
  ```bash
  kubectl expose deployment <deployment-name> --type=NodePort

Then you can access the service using the Minikube IP:

```
minikube service <service-name>
```

📝 Project Structure
This repository may include the following:

Kubernetes configuration files (e.g., YAML files for deployments, services, etc.).
Scripts to automate common Minikube setup tasks.
Example Kubernetes Configurations:
Deployments: YAML files to define deployments.
Services: YAML files to expose applications inside the cluster.
Namespaces: Configuration files for creating Kubernetes namespaces.
❓ Troubleshooting
Minikube starts but kubectl can't connect:

Ensure that kubectl is properly configured to use the Minikube context:

```
kubectl config use-context minikube
```

Minikube not starting:

Ensure that your virtualisation software (e.g., VirtualBox, VMware, etc.) is running and correctly configured.
Out of memory error:

Minikube requires a minimum amount of memory. You can adjust the memory allocated to Minikube during the start command:
```
minikube start --memory 4096
```

👨‍💻 Contributing
Feel free to submit issues, forks, and pull requests! If you'd like to contribute to this repository, follow these steps:

Fork the repo.
Create a feature branch.
Make your changes.
Open a pull request with a description of your changes.
