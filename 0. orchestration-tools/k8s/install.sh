# # Add Kubernetes Signing Keys
# sudo apt-get install curl
# curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
# # Add Kubernetes Repository
# sudo cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
# deb http://apt.kubernetes.io/ kubernetes-xenial main
# EOF
# # Update the apt package index
# sudo apt-get update
# # Install Kubernetes Tools
# sudo apt-get install -y kubelet kubeadm kubectl
# # Start the kubelet service
# sudo systemctl enable kubelet.service
# sudo systemctl start kubelet.service
# # Initialize the cluster
# OUT_KUBEADM_INIT=$(kubeadm init --pod-network-cidr=)

